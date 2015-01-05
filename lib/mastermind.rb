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
    colors_correct = @guess.inject(0) {|total, color| total + @secret.count(color)}
    "#{colors_correct} correct colors"
  end

end
