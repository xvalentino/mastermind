require_relative 'printer'


class Menu


  def execute(input)
    printer = Printer.new
    case (input)
    when 'q'
      return [printer.quit, :quit]
    when 'i'
      return [printer.instructions, :menu]
    when 'p'
      return [printer.start_game, :start]
    end
  end


end
