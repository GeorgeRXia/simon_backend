class GamesController < ApplicationController

    def index

      if Game.all.length === 2
        Game.last.destroy
        Game.last.destroy

        render json: true
      else
          render json: false
      end

    end



    def create
      Game.create(user_id: game_params);


      if Game.all.length === 2
        render json: true
      end

    end

    private


    def game_params

      params.require(:data).permit(:user_id)
    end


end
