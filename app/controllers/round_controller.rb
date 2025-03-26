class RoundController < ApplicationController
  def new
    Game.find(params[:game_id]).rounds.create!
    redirect_back_or_to "/game/host"
  end

  private

  def round_params
    params.expect(:game_id)
  end
end
