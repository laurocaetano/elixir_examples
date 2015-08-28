defmodule ElixirExamples.MergeSort do
  def sort([]) do
    []
  end

  def sort([element]) do
    [element]
  end

  def sort(list) do
    {left, right} = Enum.split(list, div(length(list), 2))
    merge(sort(left), sort(right))
  end

  defp merge([], y) do
    y
  end

  defp merge(x, []) do
    x
  end

  defp merge([x|xs], [y|ys]) do
    if x <= y do
      [x|merge(xs, [y|ys])]
    else
      [y|merge([x|xs], ys)]
    end
  end
end
