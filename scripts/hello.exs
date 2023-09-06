defmodule Hello do
  def world do
    IO.puts("Hello Elixir")
  end
  def name(name) do
    IO.puts("Hello #{name}")
  end
end

Hello.world()
