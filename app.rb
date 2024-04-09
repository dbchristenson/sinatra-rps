require "sinatra"
require "sinatra/reloader"

CHOICES = ["Rock", "Paper", "Scissors"]

def computer_choice
  choice = CHOICES.sample
  return choice
end

def get_outcome(player_choice, computer_choice)
  w = "We won!"
  l = "We lost!"
  t = "We tied!"
  if player_choice == computer_choice
    return ""
  end
end

get("/") do
  erb(:rules)
end

get("/rock") do
  player_choice = "Rock"
  computer_choice = computer_choice()
  outcome = get_outcome(player_choice, computer_choice)
  
  erb(:rock)
end

get("/paper") do
  player_choice = "Paper"
  computer_choice = computer_choice()
  outcome = get_outcome(player_choice, computer_choice)

  erb(:paper)
end

get("/scissors") do
  player_choice = "Scissors"
  computer_choice = computer_choice()
  outcome = get_outcome(player_choice, computer_choice)

  erb(:scissors)
end
