require "app.rb"
require "spec_helper"

feature "Ends Game" do
 scenario "Player 2 has run out of life" do
   sign_in_and_play
   11.times do
     attack
     return_to_game
   end
   expect(page).to have_content("Jenna loses, Dan wins!")
 end

 scenario "Start again when the battle is over" do
   sign_in_and_play
   11.times do
     attack
     return_to_game
   end
   start_again
   sign_in_and_play
   expect(page).to have_content("Dan vs Jenna!")
 end
 
end
