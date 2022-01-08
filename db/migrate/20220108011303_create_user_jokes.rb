class CreateUserJokes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_jokes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :joke_id
      t.string :joke_punchline
      t.string :joke_setup

      t.timestamps
    end
  end
end
