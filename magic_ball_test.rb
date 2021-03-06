# require 'minitest/autorun'
# require_relative 'magic_ball'
#
# class MagicballTest < MiniTest::Test
#   def test_ask_returns_an_answer
#     magicball = Magicball.new
#     # assert !magicball.ask("Test").nil?
#     # assert magicball.ask("Test") != nil
#     assert_includes Magicball::ANSWERS,
#     magicball.ask("Test?")
#   end
#   def test_predefined_answers_is_array
#     assert_kind_of Array, Magicball::ANSWERS
#   end
#   def test_predefined_answers_is_not_empty
#     refute_empty Magicball::ANSWERS
#   end
#   def test_raises_error_when_question_is_number
#     assert_raises "Questions has invalid format." do
#     magicball = Magicball.new
#     magicball.ask(1)
#     end
#   end
# end

require "minitest/autorun"
require "minitest/spec"
require_relative "magicball"

describe Magicball do
  describe "#ask" do
    it "returns an answer" do
      magic_ball = Magicball.new
      assert_includes Magicball::ANSWERS, magic_ball.ask("Test?")
    end

    it "predefined answers is array" do
      assert_kind_of Array, Magicball::ANSWERS
    end

    it "predefined answers is not empty" do
      refute_empty Magicball::ANSWERS
    end

    it "raises error when question is number" do
      assert_raises "Question has invalid format." do
        magic_ball = Magicball.new
        magic_ball.ask(1)
      end
    end
  end
end



