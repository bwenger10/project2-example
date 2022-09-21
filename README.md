# project2-example

This is an example you can use as a stsrting point for your own game. This indluces "main.rb" which is the entry point to the application. You should have as little code in here as possible.

The game of set is a card game where players take turns selecting 3 cards from the board to try and make a set. There are 81 unique cards in the deck each with their own personal attributes. The board consists of 12 cards and 3 new cards are dealt if the set is found. The different attributes for each card can are:

            1. Shape (oval, diamond, or squiggle)
            2. Fill (open, stripped, or solid)
            3. Color (red, green, purple)
            4. Number of shapes (One, Two, Three)

I implemented the game of set in Ruby. I needed to create 4 new classes for this implementation. When looking for a set, the following attributes must be met to get a point:
            1. All 3 selected cards have the same shape or all have 3 different shapes
            2. All 3 selected cards have the same shading/fill or all have 3 different shadings/fills
            3. All 3 selected cards have the same color shapes or all have 3 different colors of shapes
            4. All 3 selected cards have the same number of shapes or have three different numbers of shapes 

To run the application, run "ruby main.rb"

2 players are involved in this implementation for the game of set. The game will start, asking the players who is picking the set.

The player trying to make a set will then select three cards from the game board.

After the card guesses are sent through the console, the program will determine if a set was found or not.

If a set is found, the player who found the set will get 1 point towards their total score

The program will ask after every turn if the users wish to keep playing or not.
