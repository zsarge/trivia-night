class Game < ApplicationRecord
  belongs_to :host
  validates_presence_of :name
end
