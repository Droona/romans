def numerals
  romans =
  {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
end

def convert_to_roman(arabic_number, numeral="")
  while arabic_number >= 1
    romans.each do |key, value|
      if arabic_number >= key
        numeral += value
        arabic_number -= key
        convert_to_roman(arabic_number, numeral)
      end
    end
  end
  return numeral
end
