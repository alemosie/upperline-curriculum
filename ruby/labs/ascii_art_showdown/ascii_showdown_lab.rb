require "./ascii-art"
require "colorize"
require "pry"
extend AsciiArt

WELCOME_ASCII = AsciiArt::SHOWDOWN.colorize(color: :red)
WINNER_ASCII = AsciiArt::WINNER.colorize(color: :yellow)

# the two arrays that define the art and the corresponding animal
ascii_art_of_animals = AsciiArt::ANIMAL_ART
names_of_animals = AsciiArt::ANIMAL_NAMES

# TODO: as you add more animals to the art collection, don't forget to modify these!
       # ["Dog", "Bulldog", "Beaver", "Cow", "Tiger", "Scorpion"]
game_points = [0, 0, 0, 0, 0, 0]


def welcome_to_game
  # TODO: ask for the user's name
  # TODO: store the user's name in a variable called "name"
  # TODO: interpolate "name" into the following statement: "Hi, <name>. Welcome to..."

  puts WELCOME_ASCII

  # TODO: set "number_of_animals" equal to the number of animals in the animals array
  # TODO: print the number of animal contestants in play
  puts "\n\nLet's play!\n\n"
end

def generate_random_contestants
  # TODO: select two random contestants from the animal_names array
  # TODO: return the two contestants: names of two animals
end

def find_contestant_art
  # TODO: set variable "index" to the index (position) of animal in animal_names
  # TODO: return the animal art (art) at that index
end


def print_contestant_art
  # TODO: set variable "first_contestant" to the first item in the contestants array
  # TODO: set variable "second_contestant" to the second item in the contestants array
  # TODO: use the find_contestant_art() method to get art for both contestants.
    # TODO: save the contestants' art to "first_contestant_art" and "second_contestant_art"

  puts first_contestant_art.colorize(color: :blue)
  puts "\n\n------------------ VERSUS ------------------\n\n"
  puts second_contestant_art.colorize(color: :blue)
end

def get_vote
  puts "\n\nWhich animal gets your vote?\n----------------------------\n\n"

  # TODO: print out the names of both contestants in uppercase letters so that people know what to vote for!

  puts "\nEnter your vote here:"
  gets.chomp
end

def register_vote(vote, points)
  # this method uses CONDITIONALS (if/else statements) to determine which animal got your vote
  # we'll learn about them next week!
  if vote == "Dog"
    points[0] = points[0] + 1
  elsif vote == "Bulldog"
    points[1] = points[1] + 1
  elsif vote == "Beaver"
    points[2] = points[2] + 1
  elsif vote == "Cow"
    points[3] = points[3] + 1
  elsif vote == "Tiger"
    points[4] = points[4] + 1
  elsif vote == "Scorpion"
    points[5] = points[5] + 1
  end
  points
end

def find_first_place_animal
  # TODO: set variable "highest_score" to the highest score (max value) in the points array
  # TODO: set variable "highest_score_index" to the index of the max value in the points array
  # TODO: set variable "winning_animal" to the animal in the "highest_score_index" position
  # TODO: return winning_animal
end

def declare_first_place
  # TODO: set variable "highest_score" to the highest score (max value) in the points array
  # TODO: call find_first_place_animal to get the winning animal, and set that value to "winning_animal"

  puts "\n\n#{winning_animal} is ahead with #{score} point(s)!".upcase
end

def declare_winner
  # TODO: call find_first_place_animal to get the winning animal, and set that value to "winner"
  puts "\n\n#{winner} wins!!!!".upcase
end

def run_game(animal_names, animal_art, points)
  welcome_to_game
  5.times do
    sleep(2)
    # TODO: Call your methods here to run the game!
  end
  # TODO: Call declare_winner here to end the game!
  puts WINNER_ASCII
end

run_game
