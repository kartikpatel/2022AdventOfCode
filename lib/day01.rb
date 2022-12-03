#!/usr/bin/env ruby
require "active_support/core_ext/array"

@input = ARGF.readlines

@elves = @input.split { |line| line.blank? }

@elf_calories = @elves.map { |elf| elf.reduce(0) { |sum, value| sum + value.to_i } }

puts "Part 1: #{@elf_calories.max()}"

puts "Part 2: #{@elf_calories.max(3).reduce(0) { |sum, value| sum + value }}"