
# Artist Match App
 似顔絵を絵師さんに依頼したい時、**自分の求めている絵を得意とする絵師さんをマッチングする**アプリケーション

↓↓こんな時に使う↓↓

1.似顔絵をプレゼントしたい！自分の求めている絵を描ける人を見つけたいけど、どこから探そうか・・？

2.絵師として少しでも多くの人に自分の絵を求めて欲しい！

アプリケーションURL:http://yuki-portfolio-artistmatchapp.work/

# Features
**自分の求めている似顔絵を書くことを得意とする絵師さんを10秒でマッチング**

![adb97363a6bcc5e55c66950ed811a998](https://user-images.githubusercontent.com/72023246/101280282-9d501900-380b-11eb-829c-c8f948249c3a.gif)

# How to use
【トップページ】
 * 目的をクリック
 * ログイン/ログアウトは似顔絵師さんのみ使用し、ユーザーはマッチング機能/絵の一覧/似顔絵師一覧＆詳細を閲覧可能

![9619f668d1753fcdfa29aa8f4cc66e25](https://user-images.githubusercontent.com/72023246/101280305-c96b9a00-380b-11eb-9d83-3b3cd6b79113.jpg)


【マッチングページ】
 * 自分の求める似顔絵に近い絵をクリック
 * 3回目のクリック後マッチングした絵師さんページへ遷移

![1ba2130a6e8a2b2a5607cab76223f66d](https://user-images.githubusercontent.com/72023246/101280433-50207700-380c-11eb-87e5-06387dfb01eb.gif)

【絵師さんページ】
 * 仕事依頼方法やプロフィール、作成した絵を表示
 * テストアカウントはこちらをご利用下さい(email:a@a, password:abc123)

![34f03baa8a2f81a3657a94c99ed2b053](https://user-images.githubusercontent.com/72023246/101280477-a097d480-380c-11eb-8675-8a7a4841b50f.jpg)


# Production background
クリスマスプレゼントに身近な人へ似顔絵をプレゼントしようと思い、twitterやWebサイトを複数閲覧していました

そして絵師さんそれぞれのページへアクセスし、探していて思ったことがあります

**自分の理想とする絵を描いてくれる絵師さんを素早く見つけてくれるサイトがあればなぁ・・**

当時の私は、プログラミングを猛勉強中でしたので少しでも早く見つけたい決めたい気持ちが強かったです

**ならばそれを作ろう！とにかく'スピード重視'で紹介できるサイトにしよう！**

その思いからこのアプリケーションを作成することを決めました!!
# Technology used
* 非同期通信による画像切替でスピーディなマッチング
* ユーザーの求める似顔絵をクリックで順番に表示
* N+1問題の回避
* デプロイはAWSとHeroku
* AWSはVPC/EC2/Route 53/S3を使用
- [ ] AWS

http://yuki-portfolio-artistmatchapp.work/

- [ ] Heroku

(https://artistmatch-app.herokuapp.com/)

<使用技術>
* Ruby 2.6.5/Rails 6.0.0/MySQL 5.6.47/Ajax/JavaScript/HTML/CSS/AWS/Heroku
* refile/refile-mini_magick/refile-s3/active_hash/bulma-rails/devise/rails-i18n
* rspec-rails/factory_bot_rails/rubocop
* VPC/EC2/Route 53/S3
* unicorn/capistrano/node.js/MariaDB

![bdc11dd3 (1)](https://user-images.githubusercontent.com/72023246/104984076-69deec00-5a51-11eb-9111-2e4472d0089e.png)<img src="https://user-images.githubusercontent.com/72023246/104982857-dd332e80-5a4e-11eb-884f-cfb7ebc93944.png" width="300px">![AWS](https://user-images.githubusercontent.com/72023246/104983098-6ea2a080-5a4f-11eb-81dc-8de5eca88fd4.png)![my_sql](https://user-images.githubusercontent.com/72023246/104984447-0d300100-5a52-11eb-865b-ffd76396e25d.jpg)![heroku-logotype-vertical-purple](https://user-images.githubusercontent.com/72023246/104984511-2b95fc80-5a52-11eb-9dff-b0d03c77b4c7.png)![mariadb-logo](https://user-images.githubusercontent.com/72023246/104985000-4ddc4a00-5a53-11eb-86f8-61ef62336be1.png)![amazonec2](https://user-images.githubusercontent.com/72023246/104985079-7ebc7f00-5a53-11eb-920a-0c78fb4ffa97.png)![AmazonS3](https://user-images.githubusercontent.com/72023246/104985245-de1a8f00-5a53-11eb-971d-40c63b7ed3f5.png)![unnamed](https://user-images.githubusercontent.com/72023246/104985290-f5597c80-5a53-11eb-9ada-7a614cfdafd6.png)![icon_nodejs](https://user-images.githubusercontent.com/72023246/![ダウンロード](https://user-images.githubusercontent.com/72023246/104985373-25088480-5a54-11eb-9ad7-a432ef8579fe.png)
104985356-1ae68600-5a54-11eb-9388-1bd5f9cebbf7.png)










# DEMO
ユーザーへの提供→**素早くお好みの絵師さんをご紹介**

絵師さんへの提供→**自分の得意とする絵をランキングに左右されずに選ばれる・知ってもらえる**

<img src="https://user-images.githubusercontent.com/72023246/99610346-fd497000-2a54-11eb-981b-0de242baeb3b.png" width="300px"><img src="https://user-images.githubusercontent.com/72023246/99610275-d8ed9380-2a54-11eb-92de-1434be38ad6c.jpeg" width="200px">&emsp;&emsp;&emsp;&emsp;<img src="https://user-images.githubusercontent.com/72023246/99610098-7f856480-2a54-11eb-87f3-915a14f2b3b3.jpg" width="200px">

# Solve the problems
* スピーディーに絵師さんとマッチング
* ランキングやレビューではなく、あくまで自分の求める似顔絵を描ける絵師さんとマッチング

# ER
![7313f4458eb4d73aa73ba503eee126e3](https://user-images.githubusercontent.com/72023246/99934122-6fe18500-2da0-11eb-869e-88467d483dd6.png)


# Table design

## artists table

| Column             | Type    | Options                  |
| ------------------ | ------  | ------------------------ |
| email              | string  | null: false, default: "" |
| encrypted_password | string  | null: false, default: "" |
| name               | string  | null: false              |
| profile_image_id   | string  |                          |
| job_request        | text    | null: false              |
| arttype_id         | integer | null: false              |
| arttouch_id        | integer | null: false              |
| profile            | text    | null: false              |
| price_id           | integer | null: false              |
| line               | string  |                          |
| twitter            | string  |                          |

### Association
- has_many :arts

## arts table

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| artist      | references | foreign_key: true |
| image_id    | string     | null: false       |
| arttype_id  | integer    | null: false       |
| arttouch_id | integer    | null: false       |

### Association

- belongs_to :artist

# Implementation issue
- [ ] artist情報の保存方法

=> 現構想は絵師さんがフォームに入力する方法

- [ ] どのようにマッチングさせるか

=> 絵師さんが絵の登録を行う時に、こちらが用意した選択肢からその絵の種類やタッチなどをActive_Hashで選択

   そのidをマッチングページで使いif文を用いた条件分岐で表示した

- [ ] 画像データリンク切れを防ぎたい

=> refile-s3を使用し、画像をs3に保存

# Scheduled to be implemented
- [ ] マッチング機能の強化

=> より選択肢を増やし、マッチングの精度を向上

- [ ] 要望フォームの実装

=> ユーザーの期待したマッチングが出来なかった時、その旨を記入頂き改善を目指す

- [ ] マッチング機能の修正

=> 現在の方法は、一度全ての画像を読込みdisplay: noneで隠している
   この方法では読み込む必要のない画像まで読み込む為、必要な画像のみを抽出する方法を考える必要がある

- [ ] インフラにAWSとDockerを使用

=> AWS完了！現在Docker勉強中！

# Posting cooperation
このアプリケーションで掲載している似顔絵は、
* 青木猿頬様
* ジャッキィ様
* 川上奈々の似顔絵屋さん様
* うません_似顔絵師様
* ヤマダタカエ@似顔絵師様
* ようこう@鉛筆画始めました様

にご協力頂き掲載させて頂きました。