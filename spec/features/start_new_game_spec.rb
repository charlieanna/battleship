require 'spec_helper'

describe "starting a new game" do
  it "should show a form after clicking 'new game'" do
    visit root_path
    click_link "New Game"

    fill_in 'board_aircraft_carrier_position', with: 'a1'
    fill_in 'board_battleship_position', with: 'b1'
    fill_in 'board_submarine_position', with: 'c1'
    fill_in 'board_cruiser_position', with: 'd1'
    fill_in 'board_destroyer_position', with: 'e1'
    select "right", from: 'board_aircraft_carrier_orientation'
    select "right", from: 'board_battleship_orientation'
    select "right", from: 'board_submarine_orientation'
    select "right", from: 'board_cruiser_orientation'
    select "right", from: 'board_destroyer_orientation'

    click_button 'submit'

    expect(page).to have_content "Player 2"
  end
end
