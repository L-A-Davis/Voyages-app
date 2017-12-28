class Place < ApplicationRecord
  belongs_to :destination
  has_many :reviews
  has_many :users, through: :reviews
end
