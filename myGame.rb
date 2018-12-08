#!/usr/bin/env ruby
require 'aruba'
require './loading'
require './file'
require 'pry'

loading(0.01)

puts
puts "Selamat datang, sebelum memulai kita berkenalan dulu"
puts 
print "nama anda adalah? :"
my_name = gets
puts
puts "Hello #{my_name}"
sleep 1.0 
puts "..."
sleep 1.0 
puts

# var
questions = MyFile.new.open
score = 0
playagain = "y"

while playagain == "y"
	win 			= false
	myWord    = questions.sample
	randomize = myWord.split("").shuffle.join
	
	puts "Silahkan tebak kata ini"
	puts '...'
	puts
	puts '==='
	puts "Tebak kata: #{randomize}"
	puts '==='

	while !win
		print "Jawaban anda: "
		guessed = gets.chomp

		if guessed == "exit" then
			break
		end

		# Lets compare our answer and guessed
		unless myWord.eql?(guessed) then
			puts "SALAH! Silakan coba lagi"
		else
			score += 1
			win = true
			puts "BENAR point anda : #{score}"
		end
	end

	puts "ingin bermain lagi #{my_name}? (y/n)"
	playagain = gets.chomp!
end

puts "Thanks for playing, #{my_name}!"
puts "=== Score anda #{score} ==="