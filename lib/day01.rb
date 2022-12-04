#!/usr/bin/env ruby
require "active_support/core_ext/array"

class Day1
  def part1(input)
    calculate_calories(input).max()
  end

  def part2(input)
    calculate_calories(input).max(3).reduce(0) { |sum, value| sum + value }
  end

  private

  def calculate_calories(input)
    elves = input.split { |line| line.blank? }
    elves.map { |elf| elf.reduce(0) { |sum, value| sum + value.to_i } }
  end
end