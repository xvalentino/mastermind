require 'colorize'
require 'pry'

class Printer

  #Menu
  def welcome
    "\n"*20 +
    "
    ##     ##    ###     ######  ######## ######## ########  ##     ## #### ##    ## ########
    ###   ###   ## ##   ##    ##    ##    ##       ##     ## ###   ###  ##  ###   ## ##     ##
    #### ####  ##   ##  ##          ##    ##       ##     ## #### ####  ##  ####  ## ##     ##
    ## ### ## ##     ##  ######     ##    ######   ########  ## ### ##  ##  ## ## ## ##     ##
    ##     ## #########       ##    ##    ##       ##   ##   ##     ##  ##  ##  #### ##     ##
    ##     ## ##     ## ##    ##    ##    ##       ##    ##  ##     ##  ##  ##   ### ##     ##
    ##     ## ##     ##  ######     ##    ######## ##     ## ##     ## #### ##    ## ########



    ".colorize(:light_cyan ) + "\n"*9
  end

  def menu
    menu = "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"+
    "\n"
    menu
  end

  def tenblank
    "\n"*10
  end

  def eightblank
    "\n"*7
  end

  def instructions
    "A random sequence of the colors Red, Blue, Green, and Yellow will
be generated. Your goal is to guess what that sequence is! To indicate
your guess, type in the first character of each color. For example: 'Red,
Blue, Green, Yellow' would be the sequence of letters 'RBGY.' After each
guess you will get a hint as to how many colors (or elements) you guess
correctly, and how many are in the correct position. Pressing 'q' at any
time will bring you back to the main menu, and pressing 'q' once more
will exit the game. \n\n"
  end

  #play game
  def start_game
    "\n"*9 + "I have generated a beginner sequence with four elements made up of: " + "(r)ed,".colorize(:light_red) + "
    " + "(g)reen,".colorize(:light_green) + " "+"(b)lue,".colorize(:light_blue) + " and " + "(y)ellow.".colorize(:light_yellow) + " Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def right_answer
    "Congratulations! You guessed the sequence "
  end

  def play_again?
    "Do you want to (p)lay again or (q)uit?"
  end

  def quit
    "Goodbye!"
  end

  def invalid_menu
    "I'm sorry, please enter a valid choice."
  end

  def colorify(i)
    color = []
    i.each do |letter|
      case (letter)
      when "R"
        color << letter.colorize(:light_red)
      when "G"
        color << letter.colorize(:light_green)
      when "Y"
        color << letter.colorize(:light_yellow)
      when "B"
        color << letter.colorize(:light_blue)
      end
    end
    color.join

  end

end
