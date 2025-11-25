defmodule AOC.Day01 do
  def part1(input) do
    chars = ["(", ")"]

    frequecies =
      input
      |> String.graphemes()
      |> Enum.frequencies()
      |> Map.take(chars)

    up = Map.get(frequecies, "(", 0)
    down = Map.get(frequecies, ")", 0)

    up - down
  end

  def part2(_input) do
    IO.puts("part 2")
    "part 2"
  end
end
