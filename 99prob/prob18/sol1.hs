
slice' xs s e = foldr (f) (0, []) xs
  where
    l = length xs
    f x (i,v) =
      if (l - i) <= e && (l - i) >= s
        then (i+1, (x:v))
        else (i+1, v)

slice xs s e = snd $ slice' xs s e
