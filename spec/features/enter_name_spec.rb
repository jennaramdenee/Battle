 require "app.rb"
 require "spec_helper"

feature "Enter names" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content("Dan vs Jenna!")
  end
end
