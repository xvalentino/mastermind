class Mastermind
  attr_accessor :secret
  attr_reader :guess

  def gen_secret
    @secret = []
    4.times do
    @secret << ["R", "B", "Y", "G"].sample
    end
    @secret
  end

  def guess(guess)
    @guess = guess.split("")
  end

  def color_check
    secret_check = @secret.dup
    @guess.each do |color| #deleting element unless nil
        secret_check.delete_at(secret_check.index(color) || secret_check.length)
    end
    @secret.length - secret_check.length #subtracting remaining number elements for correct colors
  end

  def place_check
    correct = 0
    [0,1,2,3].each do |num|
      if @guess[num] == @secret[num]
        correct =+1
      end
    end
    correct
  end

end
