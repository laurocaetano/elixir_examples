defmodule BasicOperationsTest do
  import ElixirExamples.BasicOperations
  use ExUnit.Case

  # Double
  test "doubles the given number" do
    assert double(2) == 4
    assert double(3) == 6
  end

  # Sum
  test "sums the given numbers" do
    assert sum(1, 2) == 3
    assert sum(2, 2) == 4
  end

  # Length
  test "returns the length of the given List" do
    assert list_length([]) == 0
    assert list_length([1]) == 1
    assert list_length([1, 2, 3]) == 3
    assert list_length([1, 2, 3, 4]) == 4
  end
end
