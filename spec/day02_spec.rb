require 'day02'

input = <<HEREDOC
A Y
B X
C Z
HEREDOC

RSpec.describe Day2, '#run' do
  context 'for day 2' do
    day = Day2.new

    it 'calculates part 1 correctly' do
      expect(day.part1(input.split("\n"))).to eq 15
    end

    it 'calculates part 2 correctly' do
      expect(day.part2(input.split("\n"))).to eq 12
    end
  end
end