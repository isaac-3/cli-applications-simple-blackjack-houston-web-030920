require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  total = a + b
  display_card_total(total)
  total
end

def hit?(card_total)
  prompt_user
  a = get_user_input
  if a == 'h'
    c = deal_card
    card_total += c
  elsif a == 's'
    card_total
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  c_total = initial_round
  # while c_total > 21 do
  #   c_total = hit?(c_total)
  #   display_card_total
  # end
  # until c_total > 21 do
  #   c_total = hit?(c_total)
  #   display_card_total
  # end
  loop do
    c_total = hit?(c_total)
    display_card_total(c_total)
    if c_total > 21
      break
    end
  end
  end_game(c_total)
end
    
