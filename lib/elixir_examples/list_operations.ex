defmodule ElixirExamples.ListOperations do
  def sum([]) do
    0
  end

  def sum(list) do
    list
    |> Enum.reduce(fn(n, acc) -> acc + n end)
  end

  def product([]) do
    1
  end

  def product(list) do
    list
    |> Enum.reduce(fn(n, acc) -> acc * n end)
  end

  def all?(_, []) do
    true
  end

  def all?(predicate, [x|xs]) do
    if predicate.(x) do
      all?(predicate, xs)
    else
      false
    end
  end
end
