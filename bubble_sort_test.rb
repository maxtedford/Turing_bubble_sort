gem 'minitest'
require 'minitest/autorun'
require_relative 'bubble_sort_recursive'
require_relative 'bubb_sort_oop'

class BubbleSortTest < Minitest::Test

  def test_that_it_exists
    array = [0]
    assert_instance_of BubbleSort, BubbleSort.new(array)
  end

  def test_you_can_see_the_sequence_that_is_passed_in
    instance = BubbleSort.new([1,2,3])
    assert_equal [1,2,3], instance.sequence
  end

  def test_it_sorts_a_single_number
    sort = BubbleSort.new([0])
    assert_equal [0], sort.bubble_sort
  end

  def test_it_sorts_two_numbers
    sort = BubbleSort.new([0, 1])
    assert_equal [0, 1], sort.bubble_sort
  end

  def test_it_sorts_three_or_more_numbers
    sort = BubbleSort.new([8, 3, 1])
    assert_equal [1, 3, 8], sort.bubble_sort

    sort = BubbleSort.new([8, 4, 12, 98, 17])
    assert_equal [4, 8, 12, 17, 98], sort.bubble_sort
  end
end
