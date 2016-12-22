require "app.rb"
require "spec_helper"

feature "Reduce opponents hit points" do
 scenario "Player 1 attack to reduce Player 2's HP by 10" do
   sign_in_and_play
   attack
   return_to_game
   expect(page).to have_content("50/60 HP")
 end
end
