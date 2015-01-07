class Mastermind
  attr_accessor :secret  # => nil
  attr_reader :guess     # => nil

  def valid_input
    i = :ask
    until i != :ask
      @input = gets.chomp.upcase
      if @input[0] == 'Q'
        i = :go
        return @input
      elsif @input.length < @secret_length
        puts "Your guess was not long enough, please make a #{@secret_length} character guess."
      elsif @input.length > @secret_length
        puts "Your guess was too long, please make a #{@secret_length} character guess."
      elsif @input.match(/[^RGYB]/)
        puts "Your guess contains characters that are not a possible element, please guess again NERD"
      elsif true || input[0] == 'q'
        i = :go
        return @input
      end
    end
  end

  def secret_length(num=4)
    @secret_length = num
  end



  def gen_secret
    self.secret_length
    @secret = []
    @secret_length.times do
    @secret << ["R", "B", "Y", "G"].sample
    end
    @secret
  end

  def guess
    @guess = @input.split("")
  end

  def color_check
    secret_check = @secret.dup
    @guess.each do |color| #deleting element unless nil
        secret_check.delete_at(secret_check.index(color) || secret_check.length)
    end
    correct = @secret.length - secret_check.length #subtracting remaining number elements for correct colors
    correct
  end

  def place_check
    correct = 0
    (0..@secret_length-1).to_a.each do |num|
      if @guess[num] == @secret[num]
        correct += 1
      end
    end
    return correct
  end





end
