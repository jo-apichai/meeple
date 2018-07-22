class GamesController < ApplicationController
  def show
    @game = Game.find_by(slug: params[:id])
  end
end
