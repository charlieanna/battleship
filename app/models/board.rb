class Board
  include ActiveModel::Model

  attr_accessor :aircraft_carrier_position, :battleship_position, :submarine_position, :cruiser_position , :destroyer_position, :aircraft_carrier_orientation, :battleship_orientation, :submarine_orientation, :cruiser_orientation , :destroyer_orientation 


end
