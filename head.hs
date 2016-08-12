-- implementing head with foldr
--

myhead l = foldr f id l
  where
    id = l !! 0
    f a _ = a
