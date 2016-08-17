coeffs k l = mycoeffs' (k `div` (gcd k l)) (l `div` (gcd k l)) 0

mycoeffs' a b x | ((abs (1 - a * x)) `mod` b) == 0 = (x, ((1 - a * x) `div` b))
                | ((abs (1 - a * (-x))) `mod` b) == 0 = ((-x), ((1 - a * (-x)) `div` b))
                | otherwise = mycoeffs' a b (x+1)

--mygcd a 0 = a
--mygcd a b = mygcd b (a `mod` b)
--
--coeffs a b = (1.0, (1.0 - x)/y)
--  where
--    x = (fromInteger a) / (fromInteger c)
--    y = (fromInteger b) / (fromInteger c)
--    c = gcd a b

