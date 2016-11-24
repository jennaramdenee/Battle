require "app.rb"
require "spec_helper"

feature "View hit points" do
 scenario "Player 1 wants to view player 2 hit points" do
   sign_in_and_play
   expect(page).to have_content("60 HP")
 end
end
