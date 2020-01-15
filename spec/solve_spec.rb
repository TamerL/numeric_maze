require 'rspec/autorun'
require './src/solve'

describe '#solve' do
  context 'shows the way from the starting point to the target minimizing the number of operations,' do
    it 'returns this array [2,4,8,16,18,9] when moving from 2 to 9' do
      expect(solve(2,9)).to eq([2,4,8,16,18,9])
    end
    it 'returns this array [9,18,20,10,12,6,8,4,2] when moving from 9 to 2' do
      expect(solve(9,2)).to eq([9,18,20,10,12,6,8,4,2])
    end

    it 'it raises an error if the input is not two numbers' do
      expect do
        solve(nil)
      end.to raise_error("wrong number of arguments (given 1, expected 2)")
    end
  end
end
