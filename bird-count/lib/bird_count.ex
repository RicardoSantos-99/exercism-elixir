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

  # FIXME: use recursion
  def has_day_without_birds?(list) do
    if Enum.find_value(list, &(&1 == 0)), do: true, else: false
  end

  def total(list) do
    Enum.reduce(list, 0, &(&1 + &2))
  end

  def busy_days(list) do
    length(Enum.filter(list, &(&1 >= 5)))
  end
end
