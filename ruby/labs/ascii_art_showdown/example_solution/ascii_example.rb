require_relative "../ascii_art"
require "colorize"
require "pry"
extend AsciiArt

WELCOME_ASCII = AsciiArt::SHOWDOWN.colorize(color: :red)
WINNER_ASCII = AsciiArt::WINNER.colorize(color: :yellow)

# the two arrays that define the art and the corresponding animal
animal_art = AsciiArt::ANIMAL_ART
animal_names = AsciiArt::ANIMAL_NAMES

# points values for the game
points = [0, 0, 0, 0, 0, 0]


def welcome_to_game(animals)
  puts "What is your name?"
  name = gets.chomp
  puts "Hi, #{name}! Welcome to..."

  puts WELCOME_ASCII

  puts "There are #{animals.length} animal contestants."
  puts "\n\nLet's play!\n\n"
end

def generate_random_contestants(animals)
  animals.sample(2)
end

def find_contestant_art(contestant, animals, art)
  index = animals.index(contestant)
  return art[index]
end


def print_contestant_art(contestants, animals, art)
  first = contestants[0]
  second = contestants[1]

  puts find_contestant_art(first, animals, art).colorize(color: :blue)
  puts "\n\n------------------ VERSUS ------------------\n\n"
  puts find_contestant_art(second, animals, art).colorize(color: :blue)
end

def get_vote(contestants)
  puts "\n\nWhich animal gets your vote?\n----------------------------\n\n"

  puts "#{contestants[0]} or #{contestants[1]}?".upcase

  puts "\nEnter your vote here:"
  gets.chomp
end

def register_vote(vote, points)
  vote = vote.downcase
  if vote == "dog"
    points[0] = points[0] + 1
  elsif vote == "bulldog"
    points[1] = points[1] + 1
  elsif vote == "beaver"
    points[2] = points[2] + 1
  elsif vote == "cow"
    points[3] = points[3] + 1
  elsif vote == "tiger"
    points[4] = points[4] + 1
  elsif vote == "scorpion"
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

def run_game(animals, art, points)
  welcome_to_game(animals)
  5.times do
    sleep(2)
    contestants = generate_random_contestants(animals)
    print_contestant_art(contestants, animals, art)
    vote = get_vote(contestants)
    register_vote(vote, points)
    declare_first_place(points, animals)
  end
  declare_winner(points, animals)
  puts WINNER_ASCII
end

run_game(animal_names, animal_art, points)
