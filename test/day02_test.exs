defmodule AOC.Day02Test do
  use ExUnit.Case

  test "part1" do
    assert AOC.Day02.part1("2x3x4") == 58
    assert AOC.Day02.part1("1x1x10") == 43
  end

  test "part2" do
    assert AOC.Day02.part2("2x3x4") == 34
    assert AOC.Day02.part2("1x1x10") == 14
  end
end
