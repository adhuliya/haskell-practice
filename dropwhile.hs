mydropwhile p [] = []
mydropwhile p (x:xs) | p x = mydropwhile p xs
                     | otherwise = x:xs

mydropwhile' p l = snd (foldr f ([],[]) l)
  where
    f a (x,y) | p a = (a:x, y)
              | otherwise = ([], a:(x++y))
