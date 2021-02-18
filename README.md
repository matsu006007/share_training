# Share Training

## アプリケーション概要

ShareTrainingは日々のトレーニングを記録し、共有することができるアプリです。

## URL

デプロイ後に記述予定

## テスト用アカウント

デプロイ後に記述予定

## 利用方法
 メイン機能は2つあります。

 #### 1.トレーニング記録を投稿して共有する
 「トレーニング記録を投稿する」から投稿ページにてタイトルと内容を記載し投稿します。  
 投稿された記録は他のユーザーも見れるようになっており、コメントやいいねをもらえるようにすることで、モチベーションの継続に繋がります。

 #### 2.お悩み相談室で悩みを相談できる
 「お悩み相談室」ボタンから入ることができ、トレーニング記録とは別に、トレーニングについての疑問や悩みを投稿できるようになっています。  
 ここもトレーニング記録と同様にコメントをもらうことができ、ユーザー同士で悩み解決をできるようにしています。


## 目指した課題解決

###### 1 モチベーションの維持

###### 2 トレーニングのマンネリ化防止

###### 3 トレーニングの悩み解消



## 洗い出した要件

### ・トレーニング記録機能
<dl>
  <dt>目的</dt>
  日々のトレーニングをアウトプットする
  <dt>詳細</dt>
  <dd>トレーニング記録を一覧で表示される</dd>
  <dd>トレーニング記録にコメントをもらえる</dd>
  <dt></dt>
</dl>




## 実装予定の機能

##### 1 プロフィール作成機能
目標や自己紹介など更に詳細なユーザー情報を登録して共有できるようにします。

##### 2 いいね機能
自分が気になった投稿記録に「いいね！」をすることができます。また、誰が「いいね！」をしたのかがわかるように「いいね！」の数字をクリックすると一覧が表示されます。

##### 3 コメント機能
トレーニング記録の詳細や、お悩みの詳細にコメントすることができます。内容を入力し、投稿すると詳細本文の下にあるコメント一覧にコメントが表示されます。

## データベース設計

## 作成の背景

私は今まで筋トレやランニングを行ってきましたが、トレーニングを継続させることの難しさを感じていました。  
特にトレーニングを初めてから1〜3ヶ月ほど経過すると、少しずつ行う頻度が減っていき、最終的に全くやらなくなるというサイクルを何度も経験してきました。  
なぜ運動を続けることができないのかを考えた時に、「マンネリ化して飽きてしまう」、「トレーニングのことでわからないことが解消できない」という理由なのではないかと思いました。  
そこで、普段のトレーニングを日記のように記録し、その記録をシェアしてモチベーションを高め合ったり、わからないことを気軽に質問できて普段のトレーニングを更に良いものにできる、そんなアプリケーションを開発したいと思いShareTrainingを作成しました。

## ペルソナ

性別:  男女どちらも

年齢:  20代前半〜40代前半の社会人

生活:  平日は仕事から帰宅して30分〜1時間ほどのトレーニングをしている。休日は午前中に1時間〜2時間程度のトレーニング。そろそろ始めて2ヶ月になるが、最近やることがマンネリ化してきて、トレーニングの時間が短くなったり、トレーニングをしない日も少しずつ増えてきている。




## users テーブル

| Column    | Type      | Option      |
| --------- | --------- | ----------- |
| user_name | string    | null: false |
| email     | string    | null: false |
| password  | string    | null: false |

### Association

- has_many :trainings
- has_many :training_comments
- has_many :troubles
- has_many :trouble_comments


## trainings テーブル

| Column    | Type       | Option            |
| --------- | ---------- | ----------------- |
| title     | string     | nill: false       |
| content   | text       | nill: false       |
| user      | references | foreign_key: true |

### Association

- belongs_to :user


## training_comments テーブル

| Column     | Type       | Option            |
| ---------- | ---------- | ----------------- |
| train_text | text       | null: false       |
| user       | references | foreign_key: true |
| training   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :training


## troubles テーブル

| Column                | Type       | Option            |
| --------------------- | ---------- | ----------------- |
| trouble_title         | string     | null: false       |
| trouble_content       | text       | null: false       |
| user                  | references | foreign_key: true |

### Association

- belongs_to :user


## trouble_comments テーブル

| Column       | Type       | Option            |
| ------------ | ---------- | ----------------- |
| trouble_text | text       | null: false       |
| user         | references | foreign_key: true |
| trouble      | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :trouble
