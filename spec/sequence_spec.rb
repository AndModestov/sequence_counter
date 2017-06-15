require 'rspec'
require_relative '../sequence.rb'

describe 'Sequence Сlass' do
  describe 'calculate_next method' do
    it 'returns right member' do
      result = Sequence.new('111221', 1).calculate_next
      expect(result).to eq '312211'
    end

    it 'returns nothing if member is empty' do
      result = Sequence.new('', 1).calculate_next
      expect(result).to eq ''
    end
  end

  describe 'start method' do
    it 'returns right sequence array' do
      result = Sequence.new('111221', 5).start
      expect(result).to match_array ["111221", "312211", "13112221", "1113213211", "31131211131221", "13211311123113112211"]
    end

    it 'returns nil if member is empty' do
      result = Sequence.new('', 5).start
      expect(result).to eq nil
    end
  end
end
