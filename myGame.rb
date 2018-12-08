#!/usr/bin/env ruby
require 'pry'

Dir[File.join(__dir__, "/src/*.rb")].each do |file|
  require file
end

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
playagain = "y"
my_name = Logic.new(nil, nil, my_name, nil).name

Logic.new(playagain, questions, my_name, 0).play

puts "Thanks for playing, #{my_name}!"
puts "=== Score anda #{$score} ==="