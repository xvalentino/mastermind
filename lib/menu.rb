require_relative 'printer'


class Menu


  def execute(input)
    printer = Printer.new
    case (input[0])
    when 'q'
      return [printer.quit, :quit]
    when 'i'
      return [printer.instructions, :instructions]
    when 'p'
      return [printer.start_game, :start]
    else
      return [printer.invalid_menu, :menu]
    end
  end

  def valid_input

  end


end
