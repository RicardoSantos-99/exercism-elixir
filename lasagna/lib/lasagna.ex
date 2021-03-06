defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(time), do: expected_minutes_in_oven() - time

  def preparation_time_in_minutes(num), do: num * 2

  def total_time_in_minutes(num, time), do: preparation_time_in_minutes(num) + time

  def alarm(), do: "Ding!"
end
