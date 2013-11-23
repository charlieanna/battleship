require 'spec_helper'

describe Board do
  it "should return hit if move hits" do
    @board = Board.new(aircraft_carrier_position_column: "A", aircraft_carrier_position_row: 1, aircraft_carrier_orientation: "right")
    (1..5).each do |row|
      expect(@board.move("A#{row}")).to eq "Hit!"
    end
  end

  it "should return miss if move misses" do
    @board = Board.new(aircraft_carrier_position_column: "A", aircraft_carrier_position_row: 1, aircraft_carrier_orientation: "right")
    (6..10).each do |row|
      expect(@board.move("A#{row}")).not_to eq "Hit!"
    end
  end
end
