## DOT FINDER
require 'pry'
require 'colorize'

height = 10
width = 10

def place_treasure(width, height)
  [rand(width), rand(height)]
end

def create_trap(width, height)
  [rand(width), rand(height)]
end

def move_right(current)
  current[0] += 1
  current
end

def move_left(current)
  current[0] -= 1
  current
  # this method should move the current position by one dot to the left
end

def move_up(current)
  current[1] -= 1
  current
  # this method should move the current position by one dot upwards
end

def move_down(current)
  current[1] += 1
  current
  # this method should move the current position by one dot downwards
end

def get_move(current, width, height, trap_coords)
  puts "You're at #{current} \nD'you wanna move? (W, A, S, D)"
  move = gets.chomp.downcase

  if move == "w" && (current[1] > 0)
    move_up(current)
  elsif move == "a" && (current[0] > 0)
    move_left(current)
  elsif move == "s" && (current[1] < (height-1))
    move_down(current)
  elsif move == "d" && (current[0] < (width-1))
    move_right(current)
  else
    puts "Invalid move! (sorry)"
    current
  end

end

def create_board(width, height, current, treasure, trap_coords)
  lat_count = 0
  long_count = 0

  height.times do
    width.times do
      if [lat_count, long_count] == current
        print " x "
      elsif [lat_count, long_count] == treasure
        print " $ "
      elsif [lat_count, long_count] == trap_coords
        print "!!!"
      else
        print " . "
      end
      # puts "coords are #{[lat_count, long_count]}"
      lat_count += 1
    end
    long_count += 1
    lat_count = 0
    puts "\n"
  end
end

def run_game(height, width)

  current = [0, 0]
  treasure = place_treasure(width, height)
  trap_coords = create_trap(width, height)


  # use a times loop for how many turns you want
  while current != treasure
    create_board(height, width, current, treasure, trap_coords)
    current = get_move(current, width, height, trap_coords)

    if current == trap_coords
      current = [0, 0]
    end
  end

  create_board(height, width, current, treasure, trap_coords)
  puts "YA GOT THE TREASURE YAY"

  # this method should contain all of the logic to play the game, accounting for successful (find the treasure) and unsuccessful (fall off the board) outcomes!
end


# call the `run_game` method to play the game
run_game(height, width)
