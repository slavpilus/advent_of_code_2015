defmodule AOC.Day06 do
  def part1(input, grid) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn line -> extract(line) end)
    |> Enum.reduce(grid, fn instruction, grid ->
      process_instruction(instruction, grid)
    end)
    |> Enum.reduce(0, fn row, row_count ->
      rc =
        row
        |> Enum.reduce(0, fn cell, count ->
          if(cell) do
            count + 1
          else
            count
          end
        end)

      row_count + rc
    end)
  end

  def part1(input) do
    grid =
      for _row <- 0..999 do
        for _column <- 0..999 do
          false
        end
      end

    part1(input, grid)
  end

  defp process_instruction({inst, {x1, y1}, {x2, y2}}, grid) do
    grid
    |> Enum.with_index()
    |> Enum.map(fn {row, ridx} ->
      row
      |> Enum.with_index()
      |> Enum.map(fn {cell, cinx} ->
        if cinx in x1..x2 and ridx in y1..y2 do
          case inst do
            "turn on" -> true
            "turn off" -> false
            "toggle" -> not cell
          end
        else
          cell
        end
      end)
    end)
  end

  defp extract(line) do
    case Regex.run(~r/(turn on|turn off|toggle) (\d+),(\d+) through (\d+),(\d+)/, line) do
      [_, op, x1, y1, x2, y2] ->
        {op, {String.to_integer(x1), String.to_integer(y1)},
         {String.to_integer(x2), String.to_integer(y2)}}
    end
  end

  def part2(input) do
    IO.puts(input)
  end
end
