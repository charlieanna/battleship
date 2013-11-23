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

end
