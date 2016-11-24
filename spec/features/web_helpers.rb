def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Dan"
  fill_in :player2, with: "Jenna"
  click_button "Start"
end

def attack
  click_button "Attack"
  click_button "Return To Game"
end
