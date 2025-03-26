class Game < ApplicationRecord
  belongs_to :host
  has_many :players
  validates_presence_of :name

  TIMEOUT = 1 # num days to expire after

  def self.active
    Game.where(active: true).where("created_at >= ?", TIMEOUT.day.ago)
  end
end
