defmodule NameBadge do
  def print(nil, name, department) do
    if is_nil(department) do
      "#{name} - OWNER"
    else
      "#{name} - #{String.upcase(department)}"
    end
  end

  def print(id, name, nil) do
    "[#{id}] - #{name} - OWNER"
  end

  def print(id, name, department) do
    "[#{id}] - #{name} - #{String.upcase(department)}"
  end
end
