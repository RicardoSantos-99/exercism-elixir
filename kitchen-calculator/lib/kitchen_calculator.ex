defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    convertMili(volume_pair)
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
  end

  defp convertMili({:milliliter, num}) do
    {:milliliter, num}
  end

  defp convertMili({:cup, num}) do
    {:cup, num * 240}
  end

  defp convertMili({:fluid_ounce, num}) do
    {:fluid_ounce, num * 30}
  end

  defp convertMili({:teaspoon, num}) do
    {:teaspoon, num * 5}
  end

  defp convertMili({:tablespoon, num}) do
    {:tablespoon, num * 15}
  end
end
