require_relative 'mastermind'
require_relative 'menu'
require_relative 'printer'
require 'pry'

instructions = :on
printer = Printer.new
menu = Menu.new
signal = :menu
message = ""

#Game Running
while signal != :quit#########################
#MENU
while signal == :menu
  puts printer.welcome#MASTERMIND TITLE
  puts printer.menu.colorize(:light_white)
  puts printer.tenblank
  input = gets.chomp#ASK FOR INPUT
  message, signal = menu.execute(input)#SET MESSAGE AS WELL AS GAME STATE
end

#INSTRUCTIONS
while signal == :instructions
  puts printer.welcome#MASTERMIND TITLE
  puts printer.menu.colorize(:light_black)
  puts printer.instructions.colorize(:light_white)
  input = gets.chomp#ASK FOR INPUT
  message, signal = menu.execute_instructions(input)#SET MESSAGE AS WELL AS GAME STATE
end
#START GAME
while signal == :start
  game = Mastermind.new
  secret = game.gen_secret
  signal = :play
  message = printer.start_game
end

#PLAY GAME
while signal == :play
  puts printer.welcome
  puts message
  input = game.valid_input
  game.guess
  color = game.color_check
  place = game.place_check

  if game.secret.length == place
    signal = :win
  elsif input == 'Q'
    signal = :menu
  elsif
    colored = printer.colorify(game.guess)
    message =  printer.tenblank + "'#{colored}' has #{color} of the correct elements with #{place} in the correct positions"
  end
end

#WIN GAME
while signal == :win
  puts printer.right_answer + "#{secret.join}"
  puts printer.play_again?
  input = gets.chomp
  case (input)
  when 'p'
    signal = :start
    puts printer.start_game
  when 'q' then signal = :menu
  end
end

end#############################################
