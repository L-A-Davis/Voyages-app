class Category < ApplicationRecord
  has_many :categories_destinations
  has_many :destinations, through: :categories_destinations  
end
