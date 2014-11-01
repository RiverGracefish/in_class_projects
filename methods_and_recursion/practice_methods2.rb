#!/usr/bin/env ruby

def favorite_color(name)
  if name == 'Bob'
    'Blue'
  else
    'Green'
  end
end

puts "Bob's favorite color is #{favorite_color('Bob')}"
puts "Ted's favorite color is #{favorite_color('Ted')}"
puts "Julie's favorite color is #{favorite_color('Julie')}"
