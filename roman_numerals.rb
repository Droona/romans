def convert_to_roman(arabic_number)

  xWhole = arabic_number/10
  vRemain = arabic_number%10

  vWhole = vRemain/5
  iRemain = arabic_number%5

  xTotal = "X"*xWhole
  vTotal = "V"*vWhole
  iTotal = "I"*iRemain

  arabic_number = xTotal + vTotal + iTotal

end

puts convert_to_roman(31)
