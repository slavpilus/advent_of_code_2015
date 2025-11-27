defmodule AOC.Day03 do
  def part1(input) do
    {_last, visits} =
      input
      |> String.graphemes()
      |> Enum.reduce({{0, 0}, MapSet.new([{0, 0}])}, fn d, {{x, y}, coordiantes} ->
        cooridinate =
          case d do
            "^" -> {x, y + 1}
            "v" -> {x, y - 1}
            "<" -> {x - 1, y}
            ">" -> {x + 1, y}
            _ -> {x, y}
          end

        {cooridinate, MapSet.put(coordiantes, cooridinate)}
      end)

    MapSet.size(visits)
  end

  def part2(input) do
    {:ok, input}
  end
end
