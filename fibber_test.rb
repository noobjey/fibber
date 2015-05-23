require 'minitest'
require_relative 'fibber'

class FibberTest < Minitest::Test

  def test_acceptance
    expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]

    result = Fibber.new(15)

    assert_equals 1, 0
    # assert_equals expected, result
  end

end
