class UserJokeSerializer < ActiveModel::Serializer
  attributes :id, :joke_id, :joke_puchline, :joke_setup
  belongs_to :user
end
