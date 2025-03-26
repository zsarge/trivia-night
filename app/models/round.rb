class Round < ApplicationRecord
  belongs_to :game

  before_create :set_round_number

  private

  def set_round_number
    self.round_number = game.rounds.count + 1
  end
end
