# chat-space db設計
## usersテーブル
|column|type|Options|
|------|----|------|
|name|string|null: false|
|email|string|null: false|
|password|sring|null: false|
### Association
- has_many :groups
- has_many :groups,through;groups_users
- has_many :messages

## groupsテーベル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|
### Association
- has_many :users
- has_many :users,through:groups_users
- has_manhy :messages

## groups_usersテーブル
|Column|Type|Options|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## messageテーブル
|Column|Type|Options|
|------|----|------|
|text|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
