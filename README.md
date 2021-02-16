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
| trouble_data_id       | string     | null: false       |
| another_trouble       | string     | null: false       |
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
