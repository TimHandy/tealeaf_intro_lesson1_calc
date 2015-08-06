
# calc.rb

require 'pry'

puts "I'm a calculator. I do basic calcs if provided with two numbers."
puts "try me..."


def ask(which_number)
  number = ""
  while number == "" do
    print "what's the #{which_number} number: "
    number = gets.chomp
  end
  number
end

# get first number

number_1 = ask("first")
number_2 = ask("second")

puts number_1
puts number_2



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

answer = 
  case calc_input
  when "1" then number_1.to_i + number_2.to_i
  when "2" then number_1.to_i - number_2.to_i
  when "3" then number_1.to_i * number_2.to_i
  when "4" then number_1.to_f / number_2.to_f
  end


puts "The answer is #{answer}"
