def convert_to_roman(arabic_number)

roman_num = { 1000=> "M", 900=> "CM", 500=> "D", 400=> "CD", 100=> "C", 90=> "XC", 50=> "L", 40 =>"XL", 10=> "X", 9=>"IX", 5=> "V", 4=>"IV", 1=> "I" }
temp_string = ""

roman_num.each do |arabic, roman|
  if arabic_number >= arabic
    temp_string += roman * (arabic_number/arabic)
    arabic_number -= arabic * (arabic_number/arabic)
    end
  end
  puts temp_string
end

convert_to_roman(949)
