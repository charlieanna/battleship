class GamesController < ApplicationController
  def new
    redirect_to new_board_path
  end
end
