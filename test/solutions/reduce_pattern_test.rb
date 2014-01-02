gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ReducePatternTest < Minitest::Test

  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    sum = 0
    numbers.each do |number|
      sum = sum + number
    end
    assert_equal 473, sum
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
    difference = 0
    numbers.each do |number|
      difference = difference - number
    end
    assert_equal -170, difference
  end

  def test_multiply_list_of_numbers
    numbers = [2, 3, 5, 7]
    product = 1
    numbers.each do |number|
      product = product * number
    end
    assert_equal 210, product
  end

  def test_divide_560_by_a_bunch_of_numbers
    numbers = [2, 2, 2, 5, 7]
    result = 560
    numbers.each do |number|
      result = result / number
    end
    assert_equal 2, result
  end

  def test_capitize_keywords
    keywords = ["fish", "blue"]
    phrase = 'one fish two fish red fish blue fish'
    keywords.each do |keyword|
      phrase = phrase.gsub(keyword, keyword.upcase)
    end
    assert_equal 'one FISH two FISH red FISH BLUE FISH', phrase
  end

  def test_add_second_value
    elements = [["a", 1], ["b", 9], ["c", 21]]
    sum = 0
    elements.each do |element|
      sum = sum + element[1]
    end
    assert_equal 31, sum
  end

  def test_subtract_smallest_value
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    difference = 100
    elements.each do |element|
      difference = difference - element.min
    end
    assert_equal 88, difference
  end

end