class Admin
  class GamesController < BaseController
    def index
      @games = Game.includes(:publisher).all
    end

    def new
      @game = Game.new
    end
  end
end
