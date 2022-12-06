#!/usr/bin/env ruby

class Day6
  def part1(input, window_size = 4)
    input.each_char.with_index(3) do |_, index|
      window_set = input[index - window_size + 1, window_size].chars|[]
      return index+1 if window_set.size == window_size
    end
  end

  def part2(input, window_size = 14)
    input.each_char.with_index(3) do |_, index|
      window_set = input[index - window_size + 1, window_size].chars|[]
      return index+1 if window_set.size == window_size
    end
  end
end