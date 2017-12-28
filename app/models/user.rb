class User < ApplicationRecord
  has_many :trips
  has_many :destinations, through: :trips
  has_many :reviews
  has_many :places, through: :reviews
  has_many :friendships
  has_many :friends, through: :friendships
  # has_and_belongs_to_many :friends,
  #     class_name: "User",
  #     join_table: :friendships,
  #     foreign_key: :user_id,
  #     association_foreign_key: :friend_user_id
end
