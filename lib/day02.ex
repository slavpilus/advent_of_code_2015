defmodule AOC.Day02 do
  def part1(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.reduce(0, fn line, total ->
      [l, h, w] =
        line
        |> String.split("x")
        |> Enum.map(fn x -> String.to_integer(x) end)

      side_1 = h * w
      side_2 = h * l
      side_3 = l * w
      line_total = side_1 * 2 + side_2 * 2 + side_3 * 2 + Enum.min([side_1, side_2, side_3])
      total + line_total
    end)
  end

  def part2(input) do
    IO.puts(input)
  end
end
