require "pry"

def ask_user_for_race_length
  puts "How long should the race be? (Give a number)"
  gets.chomp.to_i
end

def roll_number_dice
  number = rand(1..3)
end

def roll_direction_dice
  ["backward", "backward", "forward", "forward"].sample
end

def roll_die_for_player(player_number)
  puts "Press enter to roll the dice for player #{player_number}!"
  gets.chomp
  number = roll_number_dice
  direction = roll_direction_dice

  [number, direction]
end

def report_moves(player_1_moves, player_2_moves)
  puts "Player 1 moves #{player_1_moves[0]} space(s) #{player_1_moves[1]}."
  puts "Player 2 moves #{player_2_moves[0]} spaces(s) #{player_2_moves[1]}"
  puts "(Don't worry, you can't go negative!)"
end

def move_forward(place, number)
  place + number
end

def move_backward(place, number)
  place - number
end

def create_lane(place, length)
  head = " - " * (place)
  marker = " X "
  tail = " - " * (length - place - 1)
  ending = " ||"

  puts "\n"
  puts  head + marker + tail + ending
  puts "\n"
end

def create_winning_lane(length)
  puts "\n" + (" * " * length) + " X" + "\n"
end

def make_move(place, num, dir)
    if dir == "backward" && place - num >= 0
      place = move_backward(place, num)
    elsif dir == "forward"
      place = move_forward(place, num)
    else
      place = 0
    end
  place
end

def run_game
  length = ask_user_for_race_length
  place1 = 0
  place2 = 0
  create_lane(place1, length)
  create_lane(place2, length)
  until place1 >= length || place2 >= length
    player_1_rolls = roll_die_for_player(1)
    player_2_rolls = roll_die_for_player(2)
    report_moves(player_1_rolls, player_2_rolls)

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
