class Admin
  class GamesController < BaseController
    def index
      @games = Game.includes(:publisher).all
    end
  end
end
