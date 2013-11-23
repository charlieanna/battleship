class TurnsController < ApplicationController
  def new
    @player = session[:player] || "Player 1"
    @board = session[@player.gsub(" ", "_").downcase + "_board"]

    session[:player] = if session[:player] == "Player 1"
                         "Player 2"
                       else
                         "Player 1"
                       end
  end
end
