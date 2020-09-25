# MenRen
 MenRenは、メンズ向けの恋愛に関するノウハウを記録・共有するためのサービスです。<br >
 女性に関心がある男性の、女性へのアプローチ方法がわからないといった課題を、恋愛に役立つ具体的なノウハウを各人が共有することで解決します。<br >
![イメージ](/app/assets/images/overview.gif)

# URL
https://menren.herokuapp.com/<br >
画面中部の簡単ログインボタンから、メールアドレスとパスワードを入力せずにログインできます。

# 使用技術
- Ruby 2.5.8
- Ruby on Rails 5.2.4
- PostgreSQL
- Docker/Docker-compose
- CircleCi
- RSpec
- RuboCop
- Git/GitHub (Pull Request, Issue による擬似チーム開発)
- Heroku
- Bootstrap

# 機能一覧
- 画像投稿機能
  - carrierwave(gem)
- 検索機能
  - ransack(gem)
- ページネーション機能
  - kaminari(gem)
- ユーザー登録、ログイン機能
  - devise(gem)
- 投稿機能
- フォロー機能(Ajax)
- いいね機能(Ajax)
- コメント機能(Ajax)
- 通知機能
