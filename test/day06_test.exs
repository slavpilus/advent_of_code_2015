defmodule AOC.Day06Test do
  use ExUnit.Case

  test "part1" do
    assert AOC.Day06.part1("turn on 0,0 through 999,999", get_full_off()) == 1_000_000
    assert AOC.Day06.part1("turn on 0,0 through 999,999", get_full_on()) == 1_000_000
    assert AOC.Day06.part1("toggle 0,0 through 999,0", get_full_off()) == 1000
    assert AOC.Day06.part1("toggle 0,0 through 999,0", get_full_on()) == 999_000
    assert AOC.Day06.part1("turn off 499,499 through 500,500", get_full_on()) == 999_996
    assert AOC.Day06.part1("turn off 499,499 through 500,500", get_full_off()) == 0
  end

  test "part2" do
  end

  defp get_full_on() do
    for _row <- 0..999 do
      for _column <- 0..999 do
        true
      end
    end
  end

  defp get_full_off() do
    for _row <- 0..999 do
      for _column <- 0..999 do
        false
      end
    end
  end
end
