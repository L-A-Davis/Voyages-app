class Destination < ApplicationRecord
  has_many :categories_destinations
  has_many :categories, through: :categories_destinations
  has_many :trips
  has_many :users, through: :trips
  has_many :places
  accepts_nested_attributes_for :places
end
