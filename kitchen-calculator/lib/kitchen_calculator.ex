defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    convert_mili(volume_pair)
  end

  def from_milliliter(volume_pair, unit) do
    convert_unit(volume_pair, unit)
  end

  def convert(volume_pair, unit) do
    convert_unit(volume_pair, unit)
  end

  defp convert_mili({:milliliter, num}), do: {:milliliter, num}
  defp convert_mili({:cup, num}), do: {:milliliter, num * 240}
  defp convert_mili({:fluid_ounce, num}), do: {:milliliter, num * 30}
  defp convert_mili({:teaspoon, num}), do: {:milliliter, num * 5}
  defp convert_mili({:tablespoon, num}), do: {:milliliter, num * 15}

  defp convert_unit({:milliliter, num}, :cup), do: {:cup, num / 240}
  defp convert_unit({:milliliter, num}, :fluid_ounce), do: {:fluid_ounce, num / 30}
  defp convert_unit({:milliliter, num}, :teaspoon), do: {:teaspoon, num / 5}
  defp convert_unit({:milliliter, num}, :tablespoon), do: {:tablespoon, num / 15}
  defp convert_unit({:milliliter, num}, :milliliter), do: {:milliliter, num}

  defp convert_unit({:cup, num}, :milliliter), do: convert_mili({:cup, num})
  defp convert_unit({:cup, num}, :fluid_ounce), do: {:fluid_ounce, num * 8}
  defp convert_unit({:cup, num}, :teaspoon), do: {:teaspoon, num * 48}
  defp convert_unit({:cup, num}, :tablespoon), do: {:tablespoon, num * 16}

  defp convert_unit({:fluid_ounce, num}, :milliliter), do: {:milliliter, num * 30}
  defp convert_unit({:fluid_ounce, num}, :cup), do: {:cup, num / 8}
  defp convert_unit({:fluid_ounce, num}, :teaspoon), do: {:teaspoon, num * 6}
  defp convert_unit({:fluid_ounce, num}, :tablespoon), do: {:tablespoon, num * 2}

  defp convert_unit({:teaspoon, num}, :milliliter), do: {:milliliter, num * 5}
  defp convert_unit({:teaspoon, num}, :cup), do: {:cup, num / 48}
  defp convert_unit({:teaspoon, num}, :fluid_ounce), do: {:fluid_ounce, num / 6}
  defp convert_unit({:teaspoon, num}, :tablespoon), do: {:tablespoon, num / 3}

  defp convert_unit({:tablespoon, num}, :milliliter), do: {:milliliter, num * 15}
  defp convert_unit({:tablespoon, num}, :cup), do: {:cup, num / 16}
  defp convert_unit({:tablespoon, num}, :fluid_ounce), do: {:fluid_ounce, num / 2}
  defp convert_unit({:tablespoon, num}, :teaspoon), do: {:teaspoon, num * 3}
end
