require 'spec_helper'

describe "starting a new game" do
  it "should create a board after clicking 'new game'" do
    visit root_path
    click_link "New Game"

    select_ship_placements
    click_button 'submit'

    expect(page).to have_css "h1", text: "Player 2"
  end

  it "should create a 2nd player board after the 1st" do
    visit root_path
    click_link "New Game"

    select_ship_placements
    click_button 'submit'

    select_ship_placements
    click_button 'submit'

    expect(page).to have_css "h1", text: "Player 1's turn"
  end

  def select_ship_placements
    select "A", from: 'board_aircraft_carrier_position_column'
    select "B", from: 'board_battleship_position_column'
    select "C", from: 'board_submarine_position_column'
    select "D", from: 'board_cruiser_position_column'
    select "E", from: 'board_destroyer_position_column'

    select "1", from: 'board_aircraft_carrier_position_row'
    select "1", from: 'board_battleship_position_row'
    select "1", from: 'board_submarine_position_row'
    select "1", from: 'board_cruiser_position_row'
    select "1", from: 'board_destroyer_position_row'

    select "right", from: 'board_aircraft_carrier_orientation'
    select "right", from: 'board_battleship_orientation'
    select "right", from: 'board_submarine_orientation'
    select "right", from: 'board_cruiser_orientation'
    select "right", from: 'board_destroyer_orientation'
  end
end
