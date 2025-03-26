class GameController < ApplicationController
  def start
  end

  def play
    game_params
  end

  def host
    game_params
  end

  private
  def game_params
    params.expect(:game_id)
  end
end
