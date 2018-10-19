module MySum (
mysum
) where

mysum :: Num a => [a] -> a
mysum = foldl (+) 0
