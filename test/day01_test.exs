defmodule AOC.Day01Test do
  use ExUnit.Case

  test "day01part1" do
    assert AOC.Day01.part1("(())") == 0
    assert AOC.Day01.part1("()()") == 0
    assert AOC.Day01.part1("(((") == 3
    assert AOC.Day01.part1("(()(()(") == 3
    assert AOC.Day01.part1("))(((((") == 3
    assert AOC.Day01.part1("())") == -1
    assert AOC.Day01.part1("))(") == -1
    assert AOC.Day01.part1(")))") == -3
    assert AOC.Day01.part1(")())())") == -3
  end
end
