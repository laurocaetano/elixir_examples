defmodule ListOperationsTest do
  import ElixirExamples.ListOperations
  use ExUnit.Case

  # sum
  test "returns 0 when the list is empty" do
    assert sum([]) == 0
  end

  test "returns the sum of all elements inside the list" do
    list = [2, 2, 2, 3, 3]
    expected = 12

    assert sum(list) == expected
  end

  # product
  test "returns 1 when the list is empty" do
    assert product([]) == 1
  end

  test "returns the product of all elements" do
    list = [1, 2, 3, 4, 5]
    expected = 123

    assert product(list) == expected
  end

  # all?
  test "returns True for an empty list" do
    assert all?(&Integer.is_odd?/1, [])
  end

  test "returns True for an empty list" do
    list_of_odd_numbers = [1, 3, 5, 7, 9]

    assert all?(&Integer.is_odd?/1, list_of_odd_numbers)
  end
end
