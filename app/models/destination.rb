class Destination < ApplicationRecord
  has_many :categories_destinations
  has_many :categories, through: :categories_destinations
  has_many :trips
  has_many :users, through: :trips
  has_many :places

  def self.search(search)
      if @destination = Destination.find_by(country: search)
        where("country LIKE ?", @destination.country)
      elsif @destination = Destination.find_by(city: search)
        where("city LIKE ?", @destination.city)
      elsif @category = Category.find(search)
        where("categories_destinations.category_id LIKE ?", category_id) unless category_id.blank?
      else
    end
  end


end
