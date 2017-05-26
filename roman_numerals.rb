def convert_to_roman(arabic_number)

  mWhole = arabic_number/1000
  dRemain = arabic_number%1000

  dWhole = dRemain/500
  cRemain = arabic_number%500

  cWhole = cRemain/100
  lRemain = arabic_number%100

  lWhole = lRemain/50
  xRemain = arabic_number%50

  xWhole = xRemain/10
  vRemain = arabic_number%10

  vWhole = vRemain/5
  iRemain = arabic_number%5

  mTotal = "M"*mWhole
  dTotal = "D"*dWhole
  cTotal = "C"*cWhole
  lTotal = "L"*lWhole
  xTotal = "X"*xWhole
  vTotal = "V"*vWhole
  iTotal = "I"*iRemain

  arabic_number = mTotal + dTotal + cTotal + lTotal + xTotal + vTotal + iTotal

end

puts convert_to_roman(1533)
