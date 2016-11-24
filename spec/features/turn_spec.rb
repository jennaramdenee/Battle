require "app.rb"
require "spec_helper"


feature "End of turn / swap players" do

  scenario "After attack player is swapped" do
    sign_in_and_play
    attack
    return_to_game
    expect(page).to have_content("Jenna's turn")
  end
end
