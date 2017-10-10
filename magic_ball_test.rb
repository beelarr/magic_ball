require 'minitest/autorun'
require_relative 'magic_ball'

class MagicballTest < MiniTest::Test
  def test_ask_returns_an_answer
    magicball = Magicball.new
    assert !magicball.ask("Test").nil?
    # assert magicball.ask("Test") != nil
  end
  def test_predefined_answers_is_array
    assert_kind_of Array, Magicball::ANSWERS
  end
  def test_predefined_answers_is_not_empty
    refute_empty Magicball::ANSWERS
  end

end