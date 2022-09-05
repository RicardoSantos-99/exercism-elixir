defmodule BirdCount do
  def today(list) do
    if length(list) == 0, do: nil, else: hd(list)
  end

  def increment_day_count(list) do
    case today(list) do
      nil ->
        [1]

      _ ->
        [today(list) + 1 | tl(list)]
    end
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?([hd | tl]) do
    if hd == 0, do: true, else: has_day_without_birds?(tl)
  end

  def total(list) do
    sum(list)
  end

  def busy_days(list) do
    length(filter(list, &(&1 >= 5)))
  end

  defp filter([head | tail], func) do
    result = func.(head)

    if result do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  defp filter([], _func), do: []

  defp sum([]), do: 0

  defp sum([head | tail]), do: head + sum(tail)
end
