require 'test_helper'
require 'coprimality'

class CoprimalityTest < Minitest::Test
  
  def test_with_prime_numbers
    r = determine_coprimality(11, 7)
    assert r, "11 and 7 should be co-prime"
  end

  def test_with_same_prime
    r = determine_coprimality(11, 11)
    refute r, "11 and 11 should not be coprime"
  end

  def test_with_coprime_composites
    r = determine_coprimality(24, 49)
    assert r, "24 and 49 are coprime"
  end

  def test_with_composites_again
    r = determine_coprimality(-24, -49)
    assert r, "-24 and -49 should be coprime"
  end

  def test_with_zero
    r = determine_coprimality(0, 91)
    refute r, "0 is not coprime with any number"
  end

  def test_with_one
    r = determine_coprimality(1, 7)
    refute r, "1 is not coprime with any number"
  end

end
