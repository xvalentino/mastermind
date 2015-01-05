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
    mm.guess("GGYB")
    mm.secret = ["G", "G", "G", "G"]
    mm.color_check
    assert_equal 2, mm.color_check
  end

  def test_placement
    mm = Mastermind.new
    mm.guess("RGYB")
    mm.secret = ["Y", "G", "G", "R"]
    assert_equal 1, mm.place_check
  end

  def test_placement_checker
    skip
  end


  def test_it_wins
    skip

  end
end
