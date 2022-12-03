#!/usr/bin/env ruby
require "active_support/core_ext/array"

@input = ARGF.readlines

part1 = @input.reduce(0) do |sum, sack|
  _, first, second = sack.partition(/.{#{sack.length/2}}/)
  item = first.chars.intersection(second.chars)[0]
  case
  when ('a'..'z').include?(item)
    sum + item.ord - 96
  when ('A'..'Z').include?(item)
    sum + item.ord - 38
  end
end

part2 = @input.in_groups_of(3).reduce(0) do |sum, group|
  item = group[0].chars.intersection(group[1].chars).intersection(group[2].chars)[0]
  case
  when ('a'..'z').include?(item)
    sum + item.ord - 96
  when ('A'..'Z').include?(item)
    sum + item.ord - 38
  end
end

puts "Part 1: #{part1}"

puts "Part 2: #{part2}"