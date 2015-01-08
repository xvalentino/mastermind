class Mastermind
  attr_accessor :secret  # => nil
  attr_reader :guess     # => nil

  def valid_input#Asks for input until the input is valid
    i = :ask
    until i != :ask
      @input = gets.chomp.upcase
      if @input == 'Q'###Q is valid
        return @input
      elsif @input == 'QUIT'###QUIT is valid
        return @input
      elsif @input.length < @secret_length
        puts "Your guess was not long enough, please make a #{@secret_length} character guess."
      elsif @input.length > @secret_length
        puts "Your guess was too long, please make a #{@secret_length} character guess."
      elsif @input.match(/[^RGYB]/)
        puts "Your guess contains characters that are not a possible element, please guess again."
      elsif true
        i = :go
      end
    end
  end

  def secret_length(num=4)###How long the guess is
    @secret_length = num
  end



  def gen_secret###Generates secret
    self.secret_length
    @secret = []
    @secret_length.times do
    @secret << ["R", "B", "Y", "G"].sample
    end
    @count = 0
    @secret
  end


  def guess##Puts input into a guess as an array
    @guess = @input.split("")
    @count += 1
    @guess
  end

  def count
    @count
  end

  def color_check##checks how many colors are valid
    secret_check = @secret.dup
    @guess.each do |color| #deleting element unless nil
        secret_check.delete_at(secret_check.index(color) || secret_check.length)
    end
    correct = @secret.length - secret_check.length #subtracting remaining number elements for correct colors
    correct
  end

  def place_check##checks how many elements are in the correct posistion
    correct = 0
    (0..@secret_length-1).to_a.each do |num|
      if @guess[num] == @secret[num]
        correct += 1
      end
    end
    return correct
  end






end
