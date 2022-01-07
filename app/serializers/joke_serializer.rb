class JokeSerializer < ActiveModel::Serializer
  attributes :id, :joke_id, :joke_setup, :joke_punchline, :created_at, :updated_at
end
