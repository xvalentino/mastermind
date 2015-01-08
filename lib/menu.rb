require_relative 'printer'


class Menu


  def execute(input)#input at menu
    printer = Printer.new
    case (input)
    when ('q')
      return [printer.quit, :quit]
    when ('quit')
      return [printer.quit, :quit]
    when ('i')
      return [printer.instructions, :instructions]#instructions on
    when ('instructions')
      return [printer.instructions, :instructions]#instructions on
    when ('p')
      return [printer.start_game, :start]
    when ('play')
      return [printer.start_game, :start]
    else
      return [printer.invalid_menu, :menu]
    end
  end

  def execute_instructions(input)#inputs for instruction
    printer = Printer.new
    case (input)
    when ('q')
      return [printer.quit, :quit]
    when ('quit')
      return [printer.quit, :quit]
    when ('i')
      return [printer.instructions, :menu]#instructions off
    when ('instructions')
      return [printer.instructions, :menu]#instructions off
    when ('p')
      return [printer.start_game, :start]
    when ('play')
      return [printer.start_game, :start]
    else
      return [printer.invalid_menu, :menu]
    end
  end


end
