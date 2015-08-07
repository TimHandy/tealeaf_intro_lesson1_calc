# rock_paper_scissors.rb



choices = { 'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors' }

def winning_message(winning_choice)
  case winning_choice
  when 'p' 
    puts "paper wraps rock"
  when 'r'
    puts "rock smashes scissors"
  when 's'
    puts "scissors cuts paper"
end

loop do
  begin
    # get user choice
    print "what's your choice? (r/p/s): "
    user_choice = gets.chomp.downcase
  end until choices.keys.include?(user_choice)

  # get computer choice
  computer_choice = choices.keys.sample
  puts computer_choice
    
  # compare user choice to computer choice
  # draw
  if user_choice == computer_choice
    winning_message
    puts "it's a draw!"
  # user wins...
  elsif (user_choice == 'r' && computer_choice == 's') || (user_choice == 'p' && computer_choice == 'r') || (user_choice == 's' && computer_choice == 'p')
    winning_message(user_choice)
    puts "you win!"
    # print "you chose #{choices[user_choice]}, computer chose #{choices[computer_choice]}" 
  else
    # computer wins
    winning_message(computer_choice)
    puts "you lose!"
    # print "you chose #{choices[user_choice]}, computer chose #{choices[computer_choice]}" 
  end

  puts "want to try again? (y/n): "
  break if gets.chomp != 'y'
end


