mygcd a 0 = a
mygcd a b = mygcd b (a `mod` b)

coeffs a b = (1.0, (1.0 - x)/y)
  where
    x = (fromInteger a) / (fromInteger c)
    y = (fromInteger b) / (fromInteger c)
    c = gcd a b
