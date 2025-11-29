defmodule AOC.Day04 do
  def part1(input) do
    {_, counter} = find_hash(String.trim(input), 0, "00000")
    counter
  end

  def part2(input) do
    {_, counter} = find_hash(String.trim(input), 0, "000000")
    counter
  end

  def find_hash(key, counter, gold) do
    full_key = key <> Integer.to_string(counter)

    hash_found =
      :crypto.hash(:md5, full_key)
      |> Base.encode16(case: :lower)
      |> String.starts_with?(gold)

    if hash_found do
      {:done, counter}
    else
      find_hash(key, counter + 1, gold)
    end
  end
end
