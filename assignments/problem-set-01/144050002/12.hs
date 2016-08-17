convert num = convert' num "" 1 1

convert' 0 str _ _ = str

convert' num str 1 pos | num2 > 9 && num2 < 20 = convert' (num'd (num'd num)) ((teens num2)++space1++str) 3 (pos+2)
                       | otherwise = convert' (num'd num) ((ones num'm)++space2++str) 2 (pos+1)
  where
    num'd n = n `div` 10
    num'm = num `mod` 10
    num2 = num `mod` 100
    space1 = if length str == 0 then "" else " "
    space2 = if length str == 0 || length (ones num'm) == 0 then "" else " "

convert' num str 2 pos = convert' (num'd num) ((tens num'm)++space++str) 3 (pos+1)
  where
    num'd n = n `div` 10
    num'm = num `mod` 10
    space = if length str == 0 || length (tens num'm) == 0 then "" else " "

convert' num str 3 pos | num'm /= 0 = convert' (num'd num) ((ones num'm)++" hundred"++and++str) 4 (pos+1)
                       | otherwise = convert' (num'd num) str 4 (pos+1)
  where
    num'd n = n `div` 10
    num'm = num `mod` 10
    and = if length str == 0 then "" else " and "

convert' num str 4 pos | pos == 4 = convert' num ("thousand"++and++str) 1 pos
                       | pos == 7 = convert' num ("million"++and++str) 1 pos
                       | pos == 10 = convert' num ("billion"++and++str) 1 pos
                       | pos == 13 = convert' num ("trillion"++and++str) 1 pos
  where
    and = if length str == 0 then "" else " and "


convert' _ _ _ _ = error "<= 13 digits only"

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

teens x | x == 10 = "ten"
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
