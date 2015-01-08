require_relative 'printer'


class Menu


  def execute(input)
    printer = Printer.new
    case (input)
    when ('q')
      return [printer.quit, :quit]
    when ('quit')
      return [printer.quit, :quit]
    when ('i')
      return [printer.instructions, :instructions]
    when ('instructions')
      return [printer.instructions, :instructions]
    when ('p')
      return [printer.start_game, :start]
    when ('play')
      return [printer.start_game, :start]
    else
      return [printer.invalid_menu, :menu]
    end
  end

  def execute_instructions(input)
    printer = Printer.new
    case (input)
    when ('q')
      return [printer.quit, :quit]
    when ('quit')
      return [printer.quit, :quit]
    when ('i')
      return [printer.instructions, :menu]
    when ('instructions')
      return [printer.instructions, :menu]
    when ('p')
      return [printer.start_game, :start]
    when ('play')
      return [printer.start_game, :start]
    else
      return [printer.invalid_menu, :menu]
    end
  end


end
