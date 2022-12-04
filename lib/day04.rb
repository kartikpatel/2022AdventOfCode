#!/usr/bin/env ruby
require "active_support/core_ext/range/overlaps"

class Range
  # Compare two ranges and see if they contain each other
  #  (1..5).contain?(4..6) # => false
  #  (1..5).contain?(7..9) # => false
  #  (1..5).contain?(4..5) # => true
  def contains?(other)
    (self.begin <= other.begin && self.end >= other.end) || (self.begin >= other.begin && self.end <= other.end)
  end
end

class Day4
  def part1(input)
    input.reduce(0) do |sum, assignment|
      first_range, second_range = parse_to_ranges(assignment)
      sum + (first_range.contains?(second_range) ? 1 : 0)
    end
  end

  def part2(input)
    input.reduce(0) do |sum, assignment|
      first_range, second_range = parse_to_ranges(assignment)
      sum + (first_range.overlaps?(second_range) ? 1 : 0)
    end
  end

  private

  def parse_to_ranges(assignment)
    first, second = assignment.split(/,/)
    first_range = eval(first.gsub("-", ".."))
    second_range = eval(second.gsub("-", ".."))
    return first_range, second_range
  end
end