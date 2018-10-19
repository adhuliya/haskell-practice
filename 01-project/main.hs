import MySum
{-
 - This is a single file import demonstration.
 - `mysum` is in `MySum.hs` (mind the case)
 - For sub folder import see `../02-project`
 -
 - compile as:
 -   $ ghc --make main.hs
 -}

main = print $ mysum [1,2,3,4,5,6,7,8,9,10]
