class Host < ApplicationRecord
  has_one :game
  accepts_nested_attributes_for :game, reject_if: false
  validates_associated :game
  validates :name, presence: true
end
