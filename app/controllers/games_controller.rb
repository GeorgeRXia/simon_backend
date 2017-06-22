class GamesController < ApplicationController

    def index


    end

    def create
      Game.create(user_id: game_params);

    end

    def patch
      if game.all.length === 2
        render json:
      else

      end

    end
    private


    def game_params

      params.require(:data).permit(:user_id)
    end


end
