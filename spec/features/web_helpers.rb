def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Dan"
  fill_in :player2, with: "Jenna"
  click_button "Start"
end

def attack
  click_button "Attack"
end

def return_to_game
  click_button "Return To Game"
end

def attack_and_confirm
  attack
  return_to_game
end

def start_again
  click_button "Start Again"
end
