defmodule AOC.Day04Test do
  use ExUnit.Case

  test "part1" do
    assert AOC.Day04.part1("abcdef") == 609_043
    assert AOC.Day04.part1("pqrstuv") == 1_048_970
  end
end
