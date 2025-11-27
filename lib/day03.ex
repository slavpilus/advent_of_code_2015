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
    {_, _, _, visits} =
      input
      |> String.graphemes()
      |> Enum.reduce({0, {0, 0}, {0, 0}, MapSet.new([{0, 0}])}, fn d,
                                                                   {i, {sx, sy}, {rx, ry},
                                                                    coordiantes} ->
        if rem(i, 2) == 0 do
          santa_move = move({sx, sy}, d)
          {i + 1, santa_move, {rx, ry}, MapSet.put(coordiantes, santa_move)}
        else
          robot_move = move({rx, ry}, d)
          {i + 1, {sx, sy}, robot_move, MapSet.put(coordiantes, robot_move)}
        end
      end)

    MapSet.size(visits)
  end

  defp move({x, y}, d) do
    case d do
      "^" -> {x, y + 1}
      "v" -> {x, y - 1}
      "<" -> {x - 1, y}
      ">" -> {x + 1, y}
      _ -> {x, y}
    end
  end
end
