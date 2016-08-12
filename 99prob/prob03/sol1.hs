elementAt (x:_) 0 = x
elementAt (x:xs) n = elementAt xs (n-1)
