# Database Definition

## Tables

- users
- groups
- group_users
- messages

## Columns

### users

- name
- email
- password
- password_confirmation

etc...

### groups

- name

### group_users

- group_id
- user_id

### messages

- group_id
- user_id
- text
- image

## Association

### users

- has_many :group_users
- has_many :groups, through: :group_users
- has_many :messages

### groups

- has_many :users, through: :group_users
- has_many :messages

### group_users

- belongs_to :user
- belongs_to :group

### message

- belongs_to :user
- belongs_to :group
