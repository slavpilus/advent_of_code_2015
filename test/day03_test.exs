defmodule AOC.Day03Test do
  use ExUnit.Case

  test "part1" do
    assert AOC.Day03.part1(">") == 2
    assert AOC.Day03.part1("^>v<") == 4
    assert AOC.Day03.part1("^v^v^v^v^v") == 2
  end

  test "part2" do
    assert AOC.Day03.part2("^>") == 3
    assert AOC.Day03.part2("^>v<") == 3
    assert AOC.Day03.part2("^v^v^v^v^v") == 11
  end
end
