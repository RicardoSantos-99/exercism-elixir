defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and legacy? == false -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and legacy? == false -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    op = to_label(level, legacy?)

    cond do
      op == :fatal or op == :error -> :ops
      op == :unknown and legacy? == false -> :dev2
      op == :unknown -> :dev1
      true -> false
    end
  end
end
