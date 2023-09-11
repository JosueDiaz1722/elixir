defmodule Tutorials.Lists do
  @moduledoc """

  Function Summary

  1. sum_simple
  """

  @doc """
  Returns the sum of numbers in a list
  """

  @spec sum_simple(list(number())) :: number()
  def sum_simple([]), do: 0

  def sum_simple([h | t]), do: h + sum_simple(t)


  @spec sum_tail_rec(list(number()), integer()) :: number()
  def sum_tail_rec(nums, acc \\ 0)

  def sum_tail_rec([], acc), do: acc

  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, acc+h)

  @spec reverse([any()], [any()]) :: [any()]
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h|t], acc), do: reverse(t,[h | acc])

  @spec map([any()], (any()-> any()), [any()]) :: [any()]
  def map(elements, func, acc \\ [])
  # def map([], _, acc), do: acc
  def map([], _, acc), do: acc |> reverse()
  def map([h|t], func, acc), do: map(t, func, [func.(h) | acc])
  # Tutorials.Lists.map([1,2,3], fn x -> x * 2 end) |> Tutorials.Lists.reverse
  # [1,2,3,4,5] |> Tutorials.Lists.map(double) |> Enum.reverse

  @spec concat([any()], [any()]) :: [any()]
  def concat(src, dst), do: concat_func(src |> reverse(), dst)

  defp concat_func([], dst), do: dst
  defp concat_func([h|t], dst), do: concat_func(t, [h | dst])

 def flat_map(elements, func, acc \\ [])
 def flat_map([], _, acc), do: acc
 def flat_map([h|t], func, acc), do: flat_map(t, func, concat(acc, func.(h)))
end
