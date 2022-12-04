#this will be the absolute path to lib based on the calling __FILE__
lib = File.expand_path('../lib', __FILE__)
#this will include the path in $LOAD_PATH unless it is already included
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'day01'
require 'day02'
require 'day03'

task :day1 do
  puts "DAY 1"
  input = File.open("./txt/day01.txt").readlines
  day = Day1.new

  puts "Part 1: #{day.part1(input)}"
  puts "Part 2: #{day.part2(input)}"
end

task :day2 do
  puts "DAY 2"
  input = File.open("./txt/day02.txt").readlines
  day = Day2.new

  puts "Part 1: #{day.part1(input)}"
  puts "Part 2: #{day.part2(input)}"
end

task :day3 do
  puts "DAY 3"
  input = File.open("./txt/day03.txt").readlines
  day = Day3.new

  puts "Part 1: #{day.part1(input)}"
  puts "Part 2: #{day.part2(input)}"
end