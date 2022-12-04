require 'day02'

input = <<HEREDOC
A Y
B X
C Z
HEREDOC

RSpec.describe Day2, '#run' do
  context 'for day 2' do
    it 'calculates part 1 correctly' do
      day = Day2.new
      expect(day.part1(input.split("\n"))).to eq 15
    end

    it 'calculates part 2 correctly' do
      day = Day2.new
      expect(day.part2(input.split("\n"))).to eq 12
    end
  end
end