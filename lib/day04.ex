defmodule AOC.Day04 do
  def part1(input) do
    {_, counter} = find_hash(String.trim(input), 0)
    counter
  end

  def part2(_input) do
    {:OK, 1}
  end

  def find_hash(key, counter) do
    full_key = key <> Integer.to_string(counter)

    hash_found =
      :crypto.hash(:md5, full_key)
      |> Base.encode16(case: :lower)
      |> String.starts_with?("00000")

    if hash_found do
      {:done, counter}
    else
      find_hash(key, counter + 1)
    end
  end
end
