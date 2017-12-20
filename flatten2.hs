flatten [] = []
flatten (x:xs) =
    flatit x ++ flatten xs

flatit [] = []
flatit (x:xs) =
    flatten x ++ flatit xs
