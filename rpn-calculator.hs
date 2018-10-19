calculate_rpn rpnstr =
  calculate_rpn' (words rpnstr) []

calculate_rpn' [] (x:[]) = read x :: Integer

calculate_rpn' (x:xs) stack
  | is_operator x = calculate_rpn' xs new_stack
  | otherwise     = calculate_rpn' xs (x:stack)
  where
    is_operator x
      | x == "+" = True
      | x == "-" = True
      | x == "*" = True
      | otherwise = False
    new_stack = operate x stack
    operate x (s1:s2:ss)
      | x == "+" = (show $ n2 + n1):ss
      | x == "-" = (show $ n2 - n1):ss
      | x == "*" = (show $ n2 * n1):ss
      where
        n1 = read s1 :: Integer
        n2 = read s2 :: Integer

calculate_rpnf :: String -> Integer
calculate_rpnf rpnstr = read r
  where
    (r:[]) = foldl f [] . words  $ rpnstr
    f nl e
      | is_operator e = operate e nl
      | otherwise = (e:nl)
    operate x (s1:s2:ss)
      | x == "+" = (show (n2 + n1)):ss
      | x == "-" = (show (n2 - n1)):ss
      | x == "*" = (show (n2 * n1)):ss
      where
        n1 = read s1 :: Integer
        n2 = read s2 :: Integer
    is_operator x
      | x == "+" = True
      | x == "-" = True
      | x == "*" = True
      | otherwise = False





