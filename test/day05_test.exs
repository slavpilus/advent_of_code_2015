defmodule AOC.Day05Test do
  use ExUnit.Case

  test "part1" do
    assert AOC.Day05.part1("ugknbfddgicrmopn") == 1
    assert AOC.Day05.part1("aaa") == 1
    assert AOC.Day05.part1("jchzalrnumimnmhp") == 0
    assert AOC.Day05.part1("haegwjzuvuyypxyu") == 0
    assert AOC.Day05.part1("dvszwmarrgswjxmb") == 0
  end

  test "part2" do
    assert AOC.Day05.part2("qjhvhtzxzqqjkmpb") == 1
    assert AOC.Day05.part2("xxyxx") == 1
    assert AOC.Day05.part2("aaaxyx") == 0
    assert AOC.Day05.part2("uurcxstgmygtbstg") == 0
    assert AOC.Day05.part2("ieodomkazucvgmuy") == 0
  end
end
