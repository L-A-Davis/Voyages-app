class User < ApplicationRecord
  has_many :trips
  has_many :destinations, through: :trips

  has_many :reviews
  has_many :places, through: :reviews

  has_many :friendships
  has_many :friends, through: :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
    has_many :inverse_friends, :through => :inverse_friendships, :source => :user


end
