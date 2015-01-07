require_relative 'mastermind'
require_relative 'menu'
require_relative 'printer'

printer = Printer.new
game = Mastermind.new
menu = Menu.new
signal = :menu
#RUN PROGRAM
puts printer.welcome

#Game Running
while signal != :quit#########################

#MENU
while signal == :menu
  puts printer.menu
  input = gets.chomp
  message, signal = menu.execute(input)
  puts message
end

#START GAME
while signal == :start
  secret = game.gen_secret
  signal = :play
end

#PLAY GAME
while signal == :play
  input = gets.chomp
  game.guess(input)
  color = game.color_check
  place = game.place_check

  if game.secret.length == place
    signal = :win
  elsif input == 'q'
    signal = :menu
  elsif
    puts "'#{input}' has #{color} of the correct elements with #{place} in the correct positions"
  end
end

#WIN GAME
while signal == :win
  puts printer.right_answer + "#{secret.join}"
  puts printer.play_again?
  input = gets.chomp
  case (input)
  when 'p' then signal = :start
  when 'q' then signal = :menu
  end
end

end#############################################
