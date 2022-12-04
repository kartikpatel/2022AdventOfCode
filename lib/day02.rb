#!/usr/bin/env ruby
require "sums_up"

Choice = SumsUp.define(:rock, :paper, :scissor) do
  def self.parse_opponent(str)
    case str
    when 'A'
      rock
    when 'B'
      paper
    when 'C'
      scissor
    else
      raise ArgumentError, "Invalid choice: #{str}"
    end
  end

  def self.parse_player(str)
    case str
    when 'X'
      rock
    when 'Y'
      paper
    when 'Z'
      scissor
    else
      raise ArgumentError, "Invalid choice: #{str}"
    end
  end

  def points
    match do |c|
      c.rock 1
      c.paper 2
      c.scissor 3
    end
  end
end

Result = SumsUp.define(:lost, :draw, :won) do
  def self.parse(str)
    case str
    when 'X'
      lost
    when 'Y'
      draw
    when 'Z'
      won
    else
      raise ArgumentError, "Invalid result: #{str}"
    end
  end

  def points
    match do |r|
      r.lost 0
      r.draw 3
      r.won 6
    end
  end
end

def outcome(oc, pc)
  result = case
           when oc == pc
             Result.draw
           when oc == Choice.rock && pc == Choice.paper
             Result.won
           when oc == Choice.rock && pc == Choice.scissor
             Result.lost
           when oc == Choice.paper && pc == Choice.rock
             Result.lost
           when oc == Choice.paper && pc == Choice.scissor
             Result.won
           when oc == Choice.scissor && pc == Choice.paper
             Result.lost
           when oc == Choice.scissor && pc == Choice.rock
             Result.won
           end
  result.points + pc.points
end

def calculate_choice(oc, r)
  case
  when r == Result.draw
    oc
  when oc == Choice.rock && r == Result.won
    Choice.paper
  when oc == Choice.rock && r == Result.lost
    Choice.scissor
  when oc == Choice.paper && r == Result.won
    Choice.scissor
  when oc == Choice.paper && r == Result.lost
    Choice.rock
  when oc == Choice.scissor && r == Result.won
    Choice.rock
  when oc == Choice.scissor && r == Result.lost
    Choice.paper
  end
end

class Day2
  def part1(input)
    input.reduce(0) do |sum, round|
      letters = round.split
      oc = Choice.parse_opponent(letters[0])
      pc = Choice.parse_player(letters[1])
      sum + outcome(oc, pc)
    end
  end

  def part2(input)
    input.reduce(0) do |sum, round|
      letters = round.split
      oc = Choice.parse_opponent(letters[0])
      r = Result.parse(letters[1])
      pc = calculate_choice(oc, r)
      sum + outcome(oc, pc)
    end
  end
end