class AddJokePunchlineToJokes < ActiveRecord::Migration[6.1]
  def change
    add_column :jokes, :joke_punchline, :string
  end
end
