class CreateJokes < ActiveRecord::Migration[6.1]
  def change
    create_table :jokes do |t|
      t.string :setup
      t.string :punchline
      t.integer :joke_id

      t.timestamps
    end
  end
end
