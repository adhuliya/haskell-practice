module MyModule.MySum (
mysum
) where

import Data.List

mysum :: Num a => [a] -> a
mysum = foldl' (+) 0
