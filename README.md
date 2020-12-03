
# Artist Match App
 似顔絵を絵師さんに依頼したい時、**自分の求めている絵を得意とする絵師さんをマッチングする**アプリケーション

↓↓こんな時に使う↓↓

1.似顔絵をプレゼントしたい！自分の求めている絵を描ける人を見つけたいけど、どこから探そうか・・？

2.絵師として少しでも多くの人に自分の絵を求めて欲しい！

# Features
**自分の求めている似顔絵を書くことを得意とする絵師さんを10秒でマッチング**

![e5e9a6cad617558088a4b8cb81f8ad17 (2)](https://user-images.githubusercontent.com/72023246/100968495-c99e3800-3574-11eb-8f3f-ea7c86058654.gif)


# How to use
【トップページ】
 * 目的をクリック
 * ログイン/ログアウトは似顔絵師さんのみ使用し、ユーザーはマッチング機能/絵の一覧/似顔絵師一覧＆詳細を閲覧可能

![9f30cc8b41f2514d4db810351ad38135](https://user-images.githubusercontent.com/72023246/100968917-94deb080-3575-11eb-94a0-103549e49b0c.jpg)


【マッチングページ】
 * 自分の求める似顔絵に近い絵をクリック
 * 3回目のクリック後マッチングした絵師さんページへ遷移

![4a0001662b6a99ddd450e5587cb3e9a3](https://user-images.githubusercontent.com/72023246/100969183-074f9080-3576-11eb-87f3-bb4f125ff358.gif)


【絵師さんページ】
 * 仕事依頼方法やプロフィール、作成した絵を表示

![e1065b3982ecd3f4bee322b51c5306e4](https://user-images.githubusercontent.com/72023246/100969343-5269a380-3576-11eb-991d-cdc7eccf4fbb.jpg)


# Production background
クリスマスプレゼントに身近な人へ似顔絵をプレゼントしようと思い、twitterやWebサイトを複数閲覧していました

そして絵師さんそれぞれのページへアクセスし、探していて思ったことがあります

**自分の理想とする絵を描いてくれる絵師さんを素早く見つけてくれるサイトがあればなぁ・・**

当時の私は、プログラミングを猛勉強中でしたので少しでも早く見つけたい決めたい気持ちが強かったです

**ならばそれを作ろう！とにかく'スピード重視'で紹介できるサイトにしよう！**

その思いからこのアプリケーションを作成することを決めました!!
# Technology used
* 非同期通信による画像切替
* ユーザーの求める似顔絵を順番に表示
* 画像ズーム/ズームアウト、スクロール

<実装後表示>

実装完了後、使用したライブラリや技術を一覧画像作成

# DEMO
ユーザーへの提供→**素早くお好みの絵師さんをご紹介**

絵師さんへの提供→**自分の得意とする絵をランキングに左右されずに選ばれる・知ってもらえる**

<img src="https://user-images.githubusercontent.com/72023246/99610346-fd497000-2a54-11eb-981b-0de242baeb3b.png" width="300px"><img src="https://user-images.githubusercontent.com/72023246/99610275-d8ed9380-2a54-11eb-92de-1434be38ad6c.jpeg" width="200px">&emsp;&emsp;&emsp;&emsp;<img src="https://user-images.githubusercontent.com/72023246/99610098-7f856480-2a54-11eb-87f3-915a14f2b3b3.jpg" width="200px">

詳細実際の挙動は実装後掲載

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

=> 現構想は絵師さんがフォームに入力する方法を予定

- [ ] どのようにマッチングさせるか

=> 絵師さんが絵の登録を行う時に、こちらが用意した選択肢からその絵の種類やタッチなどをActive_Hashで選択。

そのidをマッチングページで使いif文を用いた条件分岐で表示した。

- [ ] 画像データリンク切れを防ぎたい

=> AWS,Dockerを使用したいと考えている


# Scheduled to be implemented
- [ ] マッチング機能の強化

より選択肢を増やし、マッチングの精度を向上

- [ ] 要望フォームの実装

ユーザーの期待したマッチングが出来なかった時、その旨を記入頂き改善を目指す
