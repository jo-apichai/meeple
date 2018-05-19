class HomeController < ApplicationController
  def show
    @games = Game.page(params[:page])
  end
end
