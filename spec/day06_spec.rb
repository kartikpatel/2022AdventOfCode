require 'day06'

input1 = <<HEREDOC
mjqjpqmgbljsphdztnvjfqwrcgsmlb
HEREDOC

input2 = <<HEREDOC
bvwbjplbgvbhsrlpgdmjqwftvncz
HEREDOC

input3 = <<HEREDOC
nppdvjthqldpwncqszvftbrmjlhg
HEREDOC

input4 = <<HEREDOC
nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg
HEREDOC

input5 = <<HEREDOC
zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw
HEREDOC

RSpec.describe Day6, '#run' do
  context 'for day 6' do
    day = Day6.new

    it 'calculates part 1 correctly' do
      expect(day.part1(input1)).to eq 7
      expect(day.part1(input2)).to eq 5
      expect(day.part1(input3)).to eq 6
      expect(day.part1(input4)).to eq 10
      expect(day.part1(input5)).to eq 11
    end

    it 'calculates part 2 correctly' do
      expect(day.part2(input1)).to eq 19
      expect(day.part2(input2)).to eq 23
      expect(day.part2(input3)).to eq 23
      expect(day.part2(input4)).to eq 29
      expect(day.part2(input5)).to eq 26
    end
  end
end