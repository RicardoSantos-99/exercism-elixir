defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
    :ok
  end

  def ask_name() do
    value = IO.gets("What is your character's name?") |> String.trim()

    IO.puts(value)

    value
  end

  def ask_class() do
    value = IO.gets("What is your character's class?") |> String.trim()

    IO.puts(value)

    value
  end

  def ask_level() do
    value = IO.gets("What is your character's level?")

    value = String.trim(value)
    IO.puts(value)

    String.to_integer(value)
  end

  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()

    IO.puts("Your character: %{class: #{class}, level: #{level}, name: #{name}}")

    %{
      name: name,
      class: class,
      level: level
    }
  end
end
