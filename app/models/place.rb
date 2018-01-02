class Place < ApplicationRecord
  belongs_to :destination
  has_many :reviews
  has_many :users, through: :reviews

  validates :place_type, inclusion: { in: %w(hotel restaurant attraction) }


end
