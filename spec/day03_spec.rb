require 'day03'

input = <<HEREDOC
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
HEREDOC

RSpec.describe Day3, '#run' do
  context 'for day 3' do
    it 'calculates part 1 correctly' do
      day = Day3.new
      expect(day.part1(input.split("\n"))).to eq 157
    end

    it 'calculates part 2 correctly' do
      day = Day3.new
      expect(day.part2(input.split("\n"))).to eq 70
    end
  end
end