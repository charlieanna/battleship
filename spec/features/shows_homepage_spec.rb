require 'spec_helper'

describe "Visiting the home page" do
  it "should show something" do
    visit root_path
    expect(page).to have_content "Battleships"
  end
end
