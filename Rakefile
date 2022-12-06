#this will be the absolute path to lib based on the calling __FILE__
lib = File.expand_path('../lib', __FILE__)
#this will include the path in $LOAD_PATH unless it is already included
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

#this will require all *.rb files in the lib folder based on the __dir__ of the calling __FILE__
Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }

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

task :day4 do
  puts "DAY 4"
  input = File.open("./txt/day04.txt").readlines
  day = Day4.new

  puts "Part 1: #{day.part1(input)}"
  puts "Part 2: #{day.part2(input)}"
end

task :day5 do
  puts "DAY 5"
  input = File.open("./txt/day05.txt").readlines
  day = Day5.new

  puts "Part 1: #{day.part1(input)}"
  puts "Part 2: #{day.part2(input)}"
end

task :day6 do
  puts "DAY 6"
  input = File.open("./txt/day06.txt").read
  day = Day6.new

  puts "Part 1: #{day.part1(input)}"
  puts "Part 2: #{day.part2(input)}"
end