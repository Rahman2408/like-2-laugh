class JokeSerializer < ActiveModel::Serializer
  attributes :id, :joke_id, :joke, :created_at, :updated_at
end
