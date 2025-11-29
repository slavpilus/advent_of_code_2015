defmodule AOC.Day04Test do
  use ExUnit.Case

  test "part1" do
    assert AOC.Day04.part1("abcdef") == 609_043
    assert AOC.Day04.part1("pqrstuv") == 1_048_970
  end

  # test "part2" do
  # assert AOC.Day04.part2("^>") == 3
  # assert AOC.Day04.part2("^>v<") == 3
  # ssert AOC.Day04.part2("^v^v^v^v^v") == 11
  # end
end
