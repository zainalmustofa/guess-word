
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
       @prompt = prompt
       @answer = answer
  end
end

p1 = "What color are apples?\n(a) Red/Green\n(b)Orange"
p2 = "What color are bananas?\n(a) Red/Green\n(b)Yellow"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "b")
]

def run_quiz(questions)
  answer = ""
  score = 0
  for question in questions
       puts question.prompt
       answer = gets.chomp()
       if answer == question.answer
            score += 1
       end
  end
  puts "you got #{score} out of #{questions.length()}"
end

run_quiz(questions)




///////////////

#!/usr/bin/env ruby

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'pry', require: false
end

require 'pry'

puts "Welcome to tebak kata!"

file = 'key.txt'
lv1 = []
lv2 = []

f = File.open(file, "r")
f.each_line { |line|
  lv1 << line.strip
}
f.close

myWord    = lv1.sample
randomize = myWord.split("").shuffle.join
puts "Silahkan tebak kata ini"
puts "Tebak kata: #{randomize}"
guess = gets.chomp

until guess == myWord
	puts "You suck do it again!"
	guess = gets.chomp
end

puts " You Da Man Brah!"




#!/usr/bin/env ruby
require './gemfile'
require './test'
require './loading'
require 'pry'
puts "Welcome to a game of high-low."

# A simple flag variable to know if we want to play again.
# It is started with "y" so that the game immediately goes into the first iteration.
playagain = "y"

# We keep playing while they say "y"
while playagain == "y"

    # Our win flag, to know if they won yet
    win = false
	
    # Generate random number between 1 - 100
    randNum = rand(2) + 1

    puts "Please enter a number (1-100) or -1 to exit: "
	
    # While we haven't won yet, keep prompting for numbers and comparing.
    while !win
        # Get number from user
        guessedNumber = gets.to_i

        # Wants to quit
        if guessedNumber == -1 then
            break
        end
        
        # Lets compare our number to computer number
        if guessedNumber > randNum then
            puts "Too high, try again."
        elsif guessedNumber < randNum then
            puts "Too low, try again."
        else
            puts "You win!"
            win = true
        end
    end
	
    # If we reached here, the game has ended, ask the user if they want to play again.
    puts "Want to play again? (y/n)"
    playagain = gets.chomp!
end

puts "Thanks for playing!"