defmodule MergeSortTest do
  import ElixirExamples.MergeSort
  use ExUnit.Case

  test "returns an empty list when the given list is empty" do
    assert sort([]) == []
  end

  test "sorts the list" do
    sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    unsorted = [10, 3, 7, 4, 5, 8, 2, 9, 1, 6]

    assert sort(unsorted) == sorted
  end
end
