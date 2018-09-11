
dupli xs = foldr (\x y -> x:x:y) [] xs
