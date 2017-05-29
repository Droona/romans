require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    # Release 1 ...
    # add tests for old roman numerals here
    it 'converts 1533 to MDXXXIII' do
      expect(convert_to_roman(1533)).to eq "MDXXXIII"
    end

    it 'converts 949 to CMXLIX' do
      expect(convert_to_roman(949)).to eq "CMXLIX"
  end
  end

#   describe 'modern Roman numerals' do
#     # Release 3 ...
#     # add tests for modern roman numerals here
#     it 'converts 949 to CMXLIX' do
#       expect(convert_to_roman(949)).to eq "CMXLIX"
#   end
# end
