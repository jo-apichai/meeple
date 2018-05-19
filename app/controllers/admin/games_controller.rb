class Admin
  class GamesController < BaseController
    before_action :find_game, only: [:edit, :update, :destroy]

    def index
      @games = Game.includes(:publisher).all
    end

    def new
      @game = Game.new
    end

    def create
      @game = Game.new game_params

      if @game.save
        redirect_to admin_games_path, notice: t('.success')
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @game.update(game_params)
        redirect_to admin_games_path, notice: t('.success')
      else
        render :edit
      end
    end

    def destroy
      @game.destroy
      redirect_to admin_games_path, notice: t('.success')
    end

    private def find_game
      @game = Game.find_by_slug params[:id]
    end

    private def game_params
      params.require(:game).permit(
        :name,
        :description,
        :publisher_id
      )
    end
  end
end
