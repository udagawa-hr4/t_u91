# Job Start 
#### 就活を円滑に進めることが出来るアプリです

## アプリケーション概要
- 就活についての質問をすることができます。
- カレンダー機能により、日々の予定を入力することで、確認ができます。
- ツイート機能により、他のユーザーの質問や、つぶやきを見ることができます。
- コメント機能により、他のユーザーのツイートに対してコメントしたり、コメントをもらうことが出来ます。
- ツイート欄での検索機能によりツイートを検索できることができます。
- カレンダー欄での検索機能により、予定や内容を確認することができます。

### URL ※アプリをアップしたら載せます

### テストアカウント

## 利用方法 (このアプリケーションの利用方法を説明しましょう。)

## 目指した課題解決(このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書きましょう。)

## 実装要件

### ユーザー機能
- 新規登録(Nickname、Email、Passwordを入力)を行い、ログインできるようにしています。
- ログイン(Email、Password)を入力し、ログインできます。
### ツイート機能	
- タイトル、テキスト、画像(任意)を投稿できます。
- ログインをしていることが前提です。

### カレンダー機能
- タイトルとコンテンツ(内容)、時間を入力し保存することができます。
- コンテンツは任意で投稿出来ます。
- ログインをしていることが前提です。
- タイトルのみ、カレンダーの一覧ページに表示されます。タイトルをクリックしたら、テキスト、時間を見れるようにしています。

### 検索機能
- ログインをしていない状況でも検索することができます。
- ツイート欄でのフォームで検索した際は、該当するツイートを探し出すことができます。
- カレンダー欄でのフォームで検索した際は、該当する予定、日記を探し出すことができます。

### コメント機能
- ログインしていることが前提です。
- コメントには誰がコメントしたかがわかるようにするために、ニックネームを表示させています。

### プロフィール機能
- ログインしていることが前提です。
- プロフィールを好きなように投稿することができます。
- 投稿されたツイートから、投稿者のプロフィールを見ることができます。
- 自身のツイート一覧を確認できます。


### 実装した機能についてのGIFと説明	実装した機能について、それぞれどのような特徴があるのか記述する。

### 実装予定の機能

# ER図
## テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :tweets
- has_many :comments
- has_one  :calendar
- has_one  :profile

## posts テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | null: false |
| text   | text   | null: false |

### Association

- belongs_to :user
- has_many :comments

## comment テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## blogs テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null:false                     |
| content    | text       |                                |
| start_time | datetime   |                                |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user


![ER図](weight_table.png)

# ページ遷移図
![ER図](weight_up.png)

