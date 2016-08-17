ak_mult :: (Integral a) => a -> a -> a
ak_mult _ 0 = 0
ak_mult 0 _ = 0
ak_mult 1 x = x
ak_mult (-1) x = (-x)

ak_mult a x | odd a = x + ak
            | otherwise = ak
  where 
    ak = ak_mult (div a 2) (2*x)
