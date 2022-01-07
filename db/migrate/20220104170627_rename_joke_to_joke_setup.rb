class RenameJokeToJokeSetup < ActiveRecord::Migration[6.1]
  def change
    rename_column :jokes, :joke ,:joke_setup
  end
end
