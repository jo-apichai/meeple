class HomeController < ApplicationController
  def show
    @games = Game.with_attached_cover.page(params[:page])
  end
end
