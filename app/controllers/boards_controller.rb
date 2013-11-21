class BoardsController < ApplicationController
  def new
    @player = session[:player_1_board] ? "Player 2" : "Player 1"
    @board = Board.new
  end

  def create
    session[:player_1_board] = Board.new(params[:board])
    redirect_to new_board_path
  end
end
