require "./ascii_art"
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


def welcome_to_game(names_of_animals)
  puts "What is your name?"
  name = gets.chomp
  puts "Hi, #{name.colorize(color: :yellow)}. Welcome to..."

  puts WELCOME_ASCII

  number_of_animals = names_of_animals.count
  puts "There are #{number_of_animals} contestants in play"

  puts "\n\nLet's play!\n\n"
end

def generate_random_contestants(names_of_animals)
  names_of_animals.sample(2)
end

def find_contestant_art(animal_names, contestant, ascii_art)
  index = animal_names.index(contestant)
  ascii_art[index]
end


def print_contestant_art(contestants, animal_names, ascii_art)
  first_contestant = contestants[0]
  second_contestant = contestants[1]

  first_contestant_art = find_contestant_art(animal_names, first_contestant, ascii_art)
  second_contestant_art = find_contestant_art(animal_names, second_contestant, ascii_art)
  puts first_contestant_art.colorize(color: :blue)
  puts "\n\n------------------ VERSUS ------------------\n\n"
  puts second_contestant_art.colorize(color: :blue)
end

def get_vote(contestants)
  puts "\n\nWhich animal gets your vote?\n----------------------------\n\n"
  puts contestants[0].upcase
  puts contestants[1].upcase
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

def find_first_place_animal(points, names)
  high_score_index = points.index(points.max)
  names[high_score_index]
end

def declare_first_place(points, animals)
  high_score = points.max
  winning_animal = find_first_place_animal(points, animals)
  puts "\n\n#{winning_animal} is ahead with #{high_score} point(s)!".upcase
end

def declare_winner(points, animals)
  winner = find_first_place_animal(points, animals)
  puts "\n\n#{winner} wins!!!!".upcase
end


def run_game(animal_names, animal_art, points)
  welcome_to_game(animal_names)
  contestants = generate_random_contestants(animal_names)
  print_contestant_art(contestants, animal_names, animal_art)

  vote = get_vote(contestants)
  register_vote(vote, points)
  declare_first_place(points, animal_names)
  declare_winner(points, animal_names)

  # 5.times do
  #   sleep(2)
  #   # TODO: Call your methods here to run the game!
  # end
  # # TODO: Call declare_winner here to end the game!
  # puts WINNER_ASCII
end

run_game(names_of_animals, ascii_art_of_animals, game_points)
