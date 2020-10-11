## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| email  | string     | null: false                    |

### Association

- has_many :trainings
- has_many :games
- belongs_to :events  [](現在のところはルーム機能実装時に多対多になる)


## eventsテーブル
| Column | Type            | Options                        |
| ------ | --------------- | ------------------------------ |
| user   | references      | null: false, foreign_key: true |
| traiing| references      | null: false, foreign_key: true |
| game   | references      | null: false, foreign_key: true |

### Association

- has_many :user  [](現在のところはルーム機能実装時に多対多になる)
- has_many :trainings
- has_many :games

## trainingsテーブル
| Column     | Type            | Options                        |
| ---------- | --------------- | ------------------------------ |
| good       | string          | null: false                    |
| improvement| string          | null: false                    |
| menu       | string          | null: false                    |
| why        | string          | null: false                    |

### Association

- belongs_to :user
- belongs_to :event
- belongs_to :game

## gamesテーブル
| Column      | Type            | Options                        |
| ----------- | --------------- | ------------------------------ |
| good        | string          | null: false                    |
| improvement | string          | null: false                    |
| data        | string          | null: false                    |
| menu        | string          | null: false                    | []( menuはtrainingのを使用予定 )

### Association

- belongs_to :user
- belongs_to :event
- has_one    :game  []( menuはtrainingのを使用予定 )

[]( 現状のREADMEなのでgamesの設計が終わったら追加する )
