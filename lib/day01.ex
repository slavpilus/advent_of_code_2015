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

  def part2(input) do
    {:found, loc, _} =
      input
      |> String.graphemes()
      |> Enum.with_index(1)
      |> Enum.reduce_while(0, fn {char, idx}, counter ->
        new_counter =
          case char do
            "(" -> counter + 1
            ")" -> counter - 1
            _ -> counter
          end

        if new_counter == -1 do
          {:halt, {:found, idx, new_counter}}
        else
          {:cont, new_counter}
        end
      end)

    loc
  end
end
