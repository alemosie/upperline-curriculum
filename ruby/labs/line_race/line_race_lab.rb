# TODO: create a method named "ask_user_for_race_length".
  # this method should ask the user for a number, and return the input value.
  # it represents the length of the race lane!

puts ask_user_for_race_length

def create_lane(place, length)
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

# TODO: create a method named "roll_number_dice".
  # this method should generate and return a random number from 1 to 3

def roll_direction_dice
  # TODO: Create an array that has two "backward" strings and two "forward" strings.
  # TODO: Return a random element from the array
  ["backward", "backward", "forward", "forward"].sample
end

# player_number = 1
# number1 = player1's places to move
# direction1 = player1's direction to move

# player_number = 2
# number2 = player2's places to move
# direction2 = player2's direction to move

move_player_1 = roll_die_for_player # [1, "forward"]
move_player_2 = roll_die_for_player # [3, "backward"]


def print_move(player, move) # move is an array
  puts "Player #{player} moves #{move[0]} space(s) #{move[1]}"
end

def roll_die_for_player
  puts "Press enter to roll the dice for player #{player_number}!"
  gets.chomp

  # TODO: Call the "roll_number_dice" method, and store the return value in a variable called "number"
  # TODO: Call the "roll_direction_dice" method, and store the return value in a variable called "direction"
  # TODO: Return an array with two values: number and direction
end
#
# def report_moves
#   # TODO: For each player, interpolate the player's move's number of spaces and direction in the following phrase:
#     # Player __ moves _____ space(s) in a _____ direction.
#     # Hint: player_1_rolls and player_2_rolls are arrays!
#   puts "(Don't worry, you can't go negative!)"
# end
#
# def move_forward
#   # TODO: Return the new placement for the marker: X number of spaces forward
# end
#
# def move_backward
#   # TODO: Return the new placement for the marker: X number of spaces backward
# end
#
# def create_winning_lane(length)
#   puts "\n" + (" * " * length) + " X" + "\n"
# end
#
# def make_move(place, num, dir)
#     if dir == "backward" && place - num >= 0
#       # TODO: set place to its new value using the move_backward method
#     elsif dir == "forward"
#       # TODO: set place to its new value using the move_forward method
#     else
#       place = 0
#     end
#   place
# end
#
def run_game

  length = ask_user_for_race_length

  place1 = 0 # starting position for Player 1
  place2 = 0 # starting position for Player 2

  create_lane(place1, length)
  create_lane(place2, length)


  # TODO: Create the lanes for Player 1 and Player 2

  # until place1 >= length || place2 >= length
  #   # TODO: Roll the die for Player 1, and assign the return value to the "player_1_rolls" variable
  #   # TODO: Roll the die for Player 2, and assign the return value to the "player_2_rolls" variable
  #   # TODO: Report the moves for Player 1 and Player 2!
  #
  #   place1 = make_move(place1, player_1_rolls[0], player_1_rolls[1])
  #   place2 = make_move(place2, player_2_rolls[0], player_2_rolls[1])
  #
  #   if place1 >= length
  #     puts "\n\nPLAYER 1 WINS!"
  #     create_winning_lane(length)
  #     create_lane(place2, length)
  #   elsif place2 >= length
  #     puts "\n\nPLAYER 2 WINS!"
  #     create_lane(place1, length)
  #     create_winning_lane(length)
  #     puts "\n"
  #   else
  #     create_lane(place1, length)
  #     create_lane(place2, length)
  #   end

  end
end
#
run_game
