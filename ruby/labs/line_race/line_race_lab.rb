require "pry"

def ask_user_for_race_length
  # TODO: Ask the user for a number, and return the input value.
    # This number will represent the length of the race lane!
end

def create_lane
  # This method creates the lanes for each player to race on!
  # TODO: Debug this method!
  head = " - " * place
  marker = " X "
  tail = " - " * (length - place - 1)
  ending = " ||"

  puts "\n"
  puts  head + marker + tail + ending
  puts "\n"
end

def roll_number_dice
  # TODO: Generate and return a random number from 1 to 3
end

def roll_direction_dice
  # TODO: Create an array that has two "backward" strings and two "forward" strings.
  # TODO: Return a random element from the array
end

def roll_die_for_player
  puts "Press enter to roll the dice for player #{player_number}!"
  gets.chomp

  # TODO: Call the "roll_number_dice" method, and store the return value in a variable called "number"
  # TODO: Call the "roll_direction_dice" method, and store the return value in a variable called "direction"
  # TODO: Return an array with two values: number and direction
end

def report_moves
  # TODO: For each player, interpolate the player's move's number of spaces and direction in the following phrase:
    # Player __ moves _____ space(s) in a _____ direction.
    # Hint: player_1_rolls and player_2_rolls are arrays!
  puts "(Don't worry, you can't go negative!)"
end

def move_forward
  # TODO: Return the new placement for the marker: X number of spaces forward
end

def move_backward
  # TODO: Return the new placement for the marker: X number of spaces backward
end

def create_winning_lane(length)
  puts "\n" + (" * " * length) + " X" + "\n"
end

def make_move(place, num, dir)
    if dir == "backward" && place - num >= 0
      # TODO: set place to its new value using the move_backward method
    elsif dir == "forward"
      # TODO: set place to its new value using the move_forward method
    else
      place = 0
    end
  place
end

def run_game
  length = ask_user_for_race_length
  place1 = 0 # starting position for Player 1
  place2 = 0 # starting position for Player 2

  # TODO: Create the lanes for Player 1 and Player 2

  until place1 >= length || place2 >= length
    # TODO: Roll the die for Player 1, and assign the return value to the "player_1_rolls" variable
    # TODO: Roll the die for Player 2, and assign the return value to the "player_2_rolls" variable
    # TODO: Report the moves for Player 1 and Player 2!

    place1 = make_move(place1, player_1_rolls[0], player_1_rolls[1])
    place2 = make_move(place2, player_2_rolls[0], player_2_rolls[1])

    if place1 >= length
      puts "\n\nPLAYER 1 WINS!"
      create_winning_lane(length)
      create_lane(place2, length)
    elsif place2 >= length
      puts "\n\nPLAYER 2 WINS!"
      create_lane(place1, length)
      create_winning_lane(length)
      puts "\n"
    else
      create_lane(place1, length)
      create_lane(place2, length)
    end

  end
end

run_game
