# Battle

### Purpose
Project implements a two player game of Battle

### Rules of the Game
The aim of the game is to allow two players to attack each other. The loser is the first to reach 0 hit points (HP)

### User Stories
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

### Set Up
1. Fork this repository
2. Clone repository to local machine
3. Ensure all required gems are installed by using the `bundle` command
4. Run web server using `rackup` command
5. Navigate to localhost in your browser to start playing

### Technology Used
* Ruby
* Sinatra
* RSpec, Capybara, for testing
