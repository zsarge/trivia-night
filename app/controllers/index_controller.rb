class IndexController < ApplicationController
  def index
    redirect_to "/game/start"
  end
end
