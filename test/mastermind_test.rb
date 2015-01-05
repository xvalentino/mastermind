require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MastermindTest < Minitest::Test
  def test_it_exists
    assert MastermindTest
  end

  def setup
    mm = Mastermind.new
  end

  def test_random_secret
    mm = Mastermind.new
    mm.gen_secret

  end



  def test_color_checker
    mm = Mastermind.new
    mm.guess("RRRR")
    mm.secret = "GBYR"
    mm.color_check
    assert_equal "1 correct colors", mm.color_check


  end

  def test_placement_checker
    skip
  end


  def test_it_wins
    skip

  end
end
