## usersテーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| e_mail                | string  | null: false |
| nickname              | string  | null: false |
| password              | string  | null: false |
| password_conformation | string  | null: false |


### Association
- has_many   :personals
- has_many   :posts

## personalsテーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| height                 | string     | null: false                    |
| weight                 | string     | null: false                    |
| age                    | integer    | null: false                    |
| month                  | integer    | null: false                    |
| monthly_drinking_money | integer    | null: false                    |
| user_id                | references | null: false, foreign_key: true |

### Association
- belongs_to  :user 

## postsテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| expence         | integer    | null: false                    |
| total_expence   | integer    | null: false                    |
| average_expence | integer    | null: false                    |
| average_weight  | integer    | null: false                    |
| latest_weight   | integer    | null: false                    |
| gap_weight      | integer    | null: false                    |
| text            | string     |                                |
| user_id         | references | null: false, foreign_key: true |

### Association
- belongs_to  :user 

