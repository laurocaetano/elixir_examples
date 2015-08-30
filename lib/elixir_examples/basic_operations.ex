defmodule ElixirExamples.BasicOperations do
  def double(n) do
    n * 2
  end

  def sum(x, y) do
    x + y
  end

  def list_length([]) do
    0
  end
  def list_length([e]) do
    1
  end
  def list_length([x|xs]) do
    1 + list_length(xs)
  end
end
