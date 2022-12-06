#!/usr/bin/env ruby
require "active_support/core_ext/array"

class Stacks
  def initialize(num_of_stacks)
    @stacks = Array.new(num_of_stacks) { |i| [] }
  end

  def add(scan)
    scan.each_with_index do |elem, index|
      @stacks[index].unshift(elem[0]) unless elem[0].to_s.strip.empty?
    end
  end

  def move(num, from, to, one_at_a_time)
    if one_at_a_time
      @stacks[to-1].push(@stacks[from-1].pop(num).reverse)
    else
      @stacks[to-1].push(@stacks[from-1].pop(num))
    end
    @stacks[to-1].flatten!
  end

  def tops
    @stacks.each.reduce("") do |agg, stack|
      last = (stack.last || ' ')
      agg + last.tr('[]', '') unless last.nil?
    end
  end
end

class Day5
  def part1(input)
    @stacks = nil

    lines, procedure = input.split { |line| line.blank? }
    lines.each do |line|
      scan = line.scan(/(\s\s\s\s|\[.\])/)
      @stacks = Stacks.new(scan.size) if @stacks.nil?
      @stacks.add(scan)
    end

    procedure.each do |line|
      if /move (\d+) from (\d+) to (\d+)/ =~ line
        @stacks.move($1.to_i, $2.to_i, $3.to_i, true)
      end
    end

    @stacks.tops
  end

  def part2(input)
    @stacks = nil

    lines, procedure = input.split { |line| line.blank? }
    lines.each do |line|
      scan = line.scan(/(\s\s\s\s|\[.\])/)
      @stacks = Stacks.new(scan.size) if @stacks.nil?
      @stacks.add(scan)
    end

    procedure.each do |line|
      if /move (\d+) from (\d+) to (\d+)/ =~ line
        @stacks.move($1.to_i, $2.to_i, $3.to_i, false)
      end
    end

    @stacks.tops
  end
end