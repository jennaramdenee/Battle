require "app.rb"
require "spec_helper"

feature "View Player 2 Points" do
 scenario "Player 1 wants to view player 2 hit points" do
   sign_in_and_play
   attack
   expect(page).to have_content("Dan has attacked Jenna! 10 points deducted")
 end
end
