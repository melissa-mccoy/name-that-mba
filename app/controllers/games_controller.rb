class GamesController < ApplicationController
  def index
    @games = Game.all.order("score DESC").limit(20)
  end

  def dashboard
  end

  def new
    @game = Game.new;
  end

  def new_a
    @game = Game.new;
  end

  def new_b
    @game = Game.new;
  end

  def new_c
    @game = Game.new;
  end

  def new_d
    @game = Game.new;
  end

  def create
    @game = Game.create!(game_params)
    redirect_to games_path
  end

  private
    def game_params
      params.require(:game).permit(:name, :score, :game_type)
    end
end
