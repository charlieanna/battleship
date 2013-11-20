class GamesController < ApplicationController
  def new
    @board = Board.new
  end
end
