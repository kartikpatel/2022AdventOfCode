require 'day01'

input = <<HEREDOC
1000
2000
3000

4000

5000
6000

7000
8000
9000

10000
HEREDOC

RSpec.describe Day1, '#run' do
  context 'for day 1' do
    day = Day1.new

    it 'calculates part 1 correctly' do
      expect(day.part1(input.split("\n"))).to eq 24000
    end

    it 'calculates part 2 correctly' do
      expect(day.part2(input.split("\n"))).to eq 45000
    end
  end
end