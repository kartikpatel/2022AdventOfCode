require 'day04'

input = <<HEREDOC
2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8
HEREDOC

RSpec.describe Range, '#contains?' do
  context 'for range contains' do
    it 'should not' do
      expect((5..7).contains?(7..9)).to eq false
    end

    it 'should' do
      expect((6..6).contains?(4..6)).to eq true
    end
  end
end

RSpec.describe Day4, '#run' do
  context 'for day 4' do
    day = Day4.new

    it 'calculates part 1 correctly' do
      expect(day.part1(input.split("\n"))).to eq 2
    end

    it 'calculates part 2 correctly' do
      expect(day.part2(input.split("\n"))).to eq 4
    end
  end
end