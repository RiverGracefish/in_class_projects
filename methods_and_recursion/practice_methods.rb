#!/usr/bin/env ruby

def ask_question(question)
  print "Q) #{question} "
  gets.chomp
end

name = ask_question ("What is your name? ")
age = ask_question ("What is your age? ")
color = ask_question ("What is your favorite color? ")

puts "Hello, #{name} after #{age} years, "
puts "couldn't you think of a better color than #{color}?"
