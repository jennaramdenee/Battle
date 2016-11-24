require "app.rb"
require "spec_helper"

feature "View hit points" do
 scenario "Player 1 wants to view player 2 hit points" do
   sign_in_and_play
   expect(page).to have_content("Jenna: 60/60 HP")
 end

  scenario "Player 2 wants to view player 1 hit points" do
    sign_in_and_play
    expect(page).to have_content("Dan: 60/60 HP")
  end

end
