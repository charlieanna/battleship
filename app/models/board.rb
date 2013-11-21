class Board
  include ActiveModel::Model

  attr_accessor :aircraft_carrier_position_column, :battleship_position_column,
                :submarine_position_column, :cruiser_position_column ,
                :destroyer_position_column, :aircraft_carrier_position_row,
                :battleship_position_row, :submarine_position_row, :cruiser_position_row,
                :destroyer_position_row, :aircraft_carrier_orientation,
                :battleship_orientation, :submarine_orientation, :cruiser_orientation,
                :destroyer_orientation


end
