# chat-space db設計
## usersテーブル
|column|type|Options|
|------|----|------|
|name|string|null: false|
|email|string|null: false|
|password|sring|null: false|
|group_id|insteger|null: false, foreign_key: true|
### Association
- has_many :groups

## groupsテーベル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|users_id|integer|null: false,foreign_key: true|
### Association
- has_many :users

## groups_usersテーブル
|Column|Type|Options|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|group_id|insteger|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user