require_relative 'mastermind'
require_relative 'menu'
require_relative 'printer'
require 'pry'

printer = Printer.new
menu = Menu.new
signal = :menu
#Game Running
while signal != :quit#########################
#MENU
while signal == :menu
  puts printer.welcome
  puts printer.menu.colorize(:light_white)
  puts printer.tenblank
  input = gets.chomp
  message, signal = menu.execute(input)
  puts message
end

if signal == :instructions
  puts printer.welcome
  puts printer.menu.colorize(:light_black)
  puts printer.instructions.colorize(:light_white)
  puts "enter any key to return to the menu"
  gets
  signal = :menu
end


#START GAME
while signal == :start
  game = Mastermind.new
  secret = game.gen_secret
  signal = :play
end

#PLAY GAME
while signal == :play
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
    binding.pry
    puts "'#{colored}' has #{color} of the correct elements with #{place} in the correct positions"
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
