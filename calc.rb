
# calc.rb

require 'pry'

puts "I'm a calculator. I do basic calcs if provided with two numbers"
puts "try me"

# get first number

print "What's the first number: "
number_1 = gets.chomp
until number_1 != ""
  puts "you must enter a number. Try again: "
  number_1 = gets.chomp
end

# get second number

print "What's the second number: "
number_2 = gets.chomp
until number_2 != ""
  puts "you must enter a number. Try again: "
  number_2 = gets.chomp
end

# get calc option

print "What do you want to do with the numbers?: "
puts
puts "1) add"
puts "2) subtract"
puts "3) multiply" 
puts "4) divide"
calc_input = gets.chomp
until calc_input.to_i.between?(1, 4)
  puts "you must enter a number between 1 and 3. Try again: "
  calc_input = gets.chomp
end

# do calc

answer = case calc_input
when "1" then number_1.to_f + number_2.to_f
when "2" then number_1.to_f - number_2.to_f
when "3" then number_1.to_f * number_2.to_f
when "4" then number_1.to_f / number_2.to_f
end


puts "The answer is #{answer}"
