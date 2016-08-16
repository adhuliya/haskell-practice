convert num = convert' num "" 1

convert' 0 str _ = str

convert' num str 1 | (num `div` 10) `mod` 10 == 1
                   | otherwise = ones


ones x | x == 0 = ""
       | x == 1 = "one"
       | x == 2 = "two"
       | x == 3 = "three"
       | x == 4 = "four"
       | x == 5 = "five"
       | x == 6 = "six"
       | x == 7 = "seven"
       | x == 8 = "eight"
       | x == 9 = "nine"

teen x | x == 10 = "ten"
       | x == 11 = "eleven"
       | x == 12 = "twelve"
       | x == 13 = "thirteen"
       | x == 14 = "fourteen"
       | x == 15 = "fifteen"
       | x == 16 = "sixteen"
       | x == 17 = "seventeen"
       | x == 18 = "eighteen"
       | x == 19 = "nineteen"

tens x | x == 0 = ""
       | x == 2 = "twenty"
       | x == 3 = "thirty"
       | x == 4 = "forty"
       | x == 5 = "fifty"
       | x == 6 = "sixty"
       | x == 7 = "seventy"
       | x == 8 = "eightly"
       | x == 9 = "ninety"
