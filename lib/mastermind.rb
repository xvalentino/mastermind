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
    secret_check = @secret
    colors_correct = @guess.inject(0) do
      |total, color| if secret_check.include?(color)
        secret_check.delete(color)
        total + 1
      end
    end
    "#{colors_correct} correct colors"
  end

end
