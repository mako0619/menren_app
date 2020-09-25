# メインのサンプルユーザーを2人作成する
User.create!(name:  "recruit",
  email: "recruit@example.com",
  password:              "password",
  password_confirmation: "password")

User.create!(name:  "foobar",
  email: "foobar@example.com",
  password:              "foobar",
  password_confirmation: "foobar")


# 追加のユーザーをまとめて生成する
15.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@mao.com"
password = "password"
User.create!(name:  name,
   email: email,
   password:              password,
   password_confirmation: password)
end

# フォロー
user1 = User.find(1)
user2 = User.find(2)
user3 = User.find(3)
user4 = User.find(4)
user5 = User.find(5)
user6 = User.find(6)
user7 = User.find(7)
user8 = User.find(8)
user9 = User.find(9)
user10 = User.find(10)
user11 = User.find(11)
user12 = User.find(12)
user13 = User.find(13)
user14 = User.find(14)
user15 = User.find(15)
user1.follow(user2)
user1.follow(user3)
user1.follow(user4)
user1.follow(user5)
user1.follow(user6)
user1.follow(user7)
user2.follow(user1)
user3.follow(user1)
user4.follow(user1)
user5.follow(user1)

# ユーザーの一部を対象にポストを生成する
Post.create!(
  [
    {
      user_id: 1,
      title: 'よくある女性へのアプローチでの失敗２',
      content: '打診する（提案する）前に勝手に諦めがち。連絡先を知りたいなら連絡先を聞く、飲みに行きたいなら飲みに誘う、といった形で提案することが大事。基本的に男性が主導権を握り、女性に決定権を持たせるようにする。'
    },
    {
      user_id: 1,
      title: 'よくある女性へのアプローチでの失敗１',
      content: '自信がなさそうに会話する人が多い。見た目と同じくらい自信がある（厳密にはあるように見える）ことが大事。'
    },
    {
      user_id: 1,
      title: 'よくある女性との会話での失敗３',
      content: '男性は自身の趣味や仕事の話をしがち。女性はステータスに興味がある場合はあっても、細かな趣味や仕事の内容には興味がない場合が大半。女性の話を聞くべき。'
    },
    {
      user_id: 1,
      title: 'よくある女性との会話での失敗２',
      content: '可愛い人にかわいいと言いがち。可愛い人は言われなれているため、全く意味がない。可愛くない人にかわいいと言うべきであり、可愛い人なら可愛いことに触れないのがポイント。'
    },
    {
      user_id: 1,
      title: 'よくある女性との会話での失敗１',
      content: '恋愛トークをする際に、自身のタイプについて真剣に話す男性が多い。アプローチの成功をゴールとするなら女性の恋愛観といかにマッチしているかを意識して自身のタイプを話すべき。'
    },
    {
      user_id: 1,
      title: '連絡先の交換の仕方',
      content: '打診する（交換しよう）と言うことが全て。なぜならこの際の聞き方ではなく、聞くまでに食いつきを上げられているかがポイントのため。Instagramの方が最近は教えてくれやすいので、持っていない人はまずアカウントをつくるべき。'
    },
    {
      user_id: 1,
      title: '恋愛トークまでの会話の流れの作り方',
      content: 'その女性といま会話している場所によく来るか聞く。例えば、恵比寿で飲んでいるなら恵比寿によく来るか→どこ（場所）で働いているか→どんな仕事をしているか→社内恋愛は多いか→恋愛トークといった流れにする。'
    },
    {
      user_id: 1,
      title: 'アプローチしたい女性と話すべき内容',
      content: '恋愛に関する話。なぜなら、共通の趣味について価値観が合ったとしても友人で終わる可能性が高いから。目的が異性としての関係を築くことなら、恋愛観が共通していると思ってもらうことが大切。具体的には彼氏の有無、（無しの場合）いつまで付き合っていたか、なぜ別れたか、逆にどういう人がタイプか、といったことを中心に会話する。'
    },
    {
      user_id: 1,
      title: 'アプローチしたい女性と接する際の基本的な流れ',
      content: '話しかける→オープンする（普通に会話できる関係値になる）→食いつきを上げる→そのために恋愛に対する価値観を引き出す→その価値観に合う男性像を演じる。'
    },
    {
      user_id: 1,
      title: '話しかける際のトーク例2',
      content: '慣れてきたら、相手の見た目に対して言及する。見た目の印象の逆を言うか、もしくは見た目の印象通りに言われることが多そうですねと言う。具体的には、一見清楚そうな女性なら、「周りからしっかりしていそうってよく言われそうですね。」といった具合。（この時に相手にとって不快な内容とならないように、言葉選びは慎重に。）'
    },
    {
      user_id: 1,
      title: '話しかける際のトーク例1',
      content: '慣れるまでは、同じフレーズ（特に、相手を褒めるフレーズが無難）を使い回す。例えば、「お姉さん、渋谷一髪キレイですね。」といったもので十分。これで反応があれば、そこから「どこの渋横（渋谷横丁）行かれるんですか。（渋横を知っていれば）渋横のお店について話して、（渋横を知らなければ）Instagramでよく見ません？こんな感じのやつです。」と言って用意していた投稿を見せる。'
    },
    {
      user_id: 2,
      title: '話しかけるときの大原則',
      content: '一番大切なことは、何を話すかではなく、如何に堂々としているか。話しかけることに必死で前のめりになったり、早口にならないようにする。'
    },
    {
      user_id: 3,
      title: '服の選び方',
      content: '自分の好みは捨てること。身近にモテる人がいるならその人の服装を丸パクリする。いないならInstagramで自身がターゲットとする女性が好きそうな男性インフルエンサーを探し、その服装を真似する。ちなみに髪型・肌の色・ひげについても同様。'
    },
    {
      user_id: 4,
      title: '女性との出会い方',
      content: '合コンや友達の紹介以外の方法としては、HUBやパブリックスタンドが慣れていない人でも話しかけやすい。もう少し自信がある方は、恵比寿横丁や渋谷横丁がおすすめ。'
    },
  ]
)

#お気に入り
user1 = User.find(1)
user2 = User.find(2)
user1.likes.create(post_id: 12)
user1.likes.create(post_id: 13)
user1.likes.create(post_id: 14)

# コメント
post10=Post.find(10)
post11=Post.find(11)
post10.comments.create(user_id: user2.id, content: "参考になります。")
post11.comments.create(user_id: user3.id, content: "いいですね。")
