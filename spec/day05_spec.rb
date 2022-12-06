require 'day05'

input = <<HEREDOC
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
HEREDOC

RSpec.describe Day5, '#run' do
  context 'for day 5' do
    day = Day5.new

    it 'calculates part 1 correctly' do
      expect(day.part1(input.split("\n"))).to eq "CMZ"
    end

    it 'calculates part 2 correctly' do
      expect(day.part2(input.split("\n"))).to eq "MCD"
    end
  end
end