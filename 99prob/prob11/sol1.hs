-- related to ../prob10
data Value a = Multiple Int a | Single a deriving (Show)

-- encodeModified :: (Eq a) => [a] -> [Value a]
encodeModified xs = 
  foldr (f) [] xs
    where
      f x yys@((Single y):ys) = 
        if x == y
          then (Multiple 2 x):ys
          else ((Single x):yys)
      f x yys@((Multiple ny y):ys) =
        if x == y
          then (Multiple (ny+1) y):ys
          else ((Single x):yys)
      f x [] = [(Single x)]
