class Host < ApplicationRecord
  has_one :game
  accepts_nested_attributes_for :game # Allow nested game creation
  validates_associated :games
  validates_presence_of :name
end
