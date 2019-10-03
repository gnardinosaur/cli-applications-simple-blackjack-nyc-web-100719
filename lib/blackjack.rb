def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  card_total = num
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  card_total = num
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def hit?(num)
  prompt_user
  key = get_user_input
  card_total = num
  if key == "h"
    card_total += deal_card
  elsif key == "s"
    card_total
  else key != "h" || key != "s"
    get_user_input
    invalid_command
    prompt_user
  end
  card_total 
end
  
def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total += hit?(card_total)
    if get_user_input == "s"
      hit?(card_total)
    else get_user_input == "h"
      display_card_total(card_total)
    end
  end
  end_game(card_total)
end

