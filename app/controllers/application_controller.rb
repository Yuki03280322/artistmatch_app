class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def after_sign_in_path_for(_resource)
    artist_path(current_artist)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :job_request, :arttype_id, :arttouch_id, :profile, :price_id, :line, :twitter])
  end
end
