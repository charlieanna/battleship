require 'spec_helper'

describe "Take a turn" do
  it "should show options to shoot at and hit a ship" do
    visit root_path
    click_link "New Game"
    select_ship_placements
    click_button 'submit'
    select_ship_placements
    click_button 'submit'

    choose('A1')
    click_button 'submit'
    
    expect(page).to have_css "p", text: "Hit!"
  end
end
