defmodule AOC.Day05 do
  def part1(input) do
    out =
      input
      |> String.split("\n", trim: true)
      |> Enum.reduce(0, fn line, total ->
        if is_nice?(line) do
          total + 1
        else
          total
        end
      end)

    out
  end

  def part2(input) do
    out =
      input
      |> String.split("\n", trim: true)
      |> Enum.reduce(0, fn line, total ->
        if is_nice2?(line) do
          total + 1
        else
          total
        end
      end)

    out
  end

  defp is_nice2?(string) do
    has_pairs?(string) and
      has_xox?(string)
  end

  defp has_xox?(string) do
    string
    |> String.graphemes()
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.reduce_while(false, fn chunk, _ ->
      [a, _, c] = chunk

      if a == c do
        {:halt, true}
      else
        {:cont, false}
      end
    end)
  end

  defp has_pairs?(string) do
    pairs =
      string
      |> String.graphemes()
      |> Enum.chunk_every(2, 1, :discard)
      |> Enum.with_index()

    pairs
    |> Enum.reduce_while(false, fn {pair, idx}, _ ->
      rest_of_pairs =
        pairs
        |> Enum.drop_while(fn {_, i} -> i < idx + 2 end)

      has_duplicate =
        rest_of_pairs
        |> Enum.any?(fn {other_pair, _} -> pair == other_pair end)

      if has_duplicate do
        {:halt, true}
      else
        {:cont, false}
      end
    end)
  end

  defp is_nice?(string) do
    has_three_vowels?(string) and
      has_two_chars_in_row?(string) and
      not has_forbidden_substr?(string)
  end

  defp has_forbidden_substr?(str) do
    forbidden = ["ab", "cd", "pq", "xy"]

    Enum.any?(forbidden, fn sub ->
      String.contains?(str, sub)
    end)
  end

  defp has_two_chars_in_row?(str) do
    Regex.match?(~r/(.)\1/, str)
  end

  defp has_three_vowels?(str) do
    vowels = ["a", "e", "i", "o", "u"]

    vowels_count =
      str
      |> String.graphemes()
      |> Enum.frequencies()
      |> Map.take(vowels)
      |> Enum.reduce(0, fn {_, v}, total ->
        total + v
      end)

    vowels_count >= 3
  end
end
