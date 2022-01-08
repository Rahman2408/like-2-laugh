class UserJokeSerializer < ActiveModel::Serializer
  attributes :id, :joke_id, :joke_puchline, :joke_setup
  has_one :user


end
