app_path = File.expand_path('../../../', __FILE__)
worker_processes 1
working_directory "#{app_path}/current"
pid "#{app_path}/shared/tmp/pids/unicorn.pid"
listen "#{app_path}/shared/tmp/sockets/unicorn.sock"
stderr_path "#{app_path}/shared/log/unicorn.stderr.log"
stdout_path "#{app_path}/shared/log/unicorn.stdout.log"
timeout 60
preload_app true
GC.respond_to?(:copy_on_write_friendly=) && GC.copy_on_write_friendly = true
check_client_connection false
run_once = true

before_fork do |server, worker|
  defined?(ActiveRecord::Base) &&
    ActiveRecord::Base.connection.disconnect!

  if run_once
    run_once = false # prevent from firing again
  end

  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exist?(old_pid) && server.pid != old_pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH => e
      logger.error e
    end
  end
end

after_fork do |_server, _worker|
  defined?(ActiveRecord::Base) && ActiveRecord::Base.establish_connection
end

upstream app_server {
  server unix:/var/www/artistmatch_app/shared/tmp/sockets/unicorn.sock;
}

server {
  listen 80;
  server_name 54.238.153.106;
  client_max_body_size 2g;
  root /var/www/artistmatch_app/current/public;

  location ^~ /assets/ {
    gzip_static on;
    expires max;
    add_header Cache-Control public;
    root /var/www/artistmatch_app/current/public;
  }

  try_files $uri/index.html $uri @unicorn;

  location @unicorn {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_pass http://app_server;
  }

  error_page 500 502 503 504 /500.html;
}