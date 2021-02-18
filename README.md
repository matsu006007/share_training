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




## 目指した課題解決



## 洗い出した要件



## 実装した機能についての説明

## 実装予定の機能

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
