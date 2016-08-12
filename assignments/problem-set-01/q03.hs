-- where_smallest f a b gives smallest value of f in the range a b

where_smallest f a b | a <= b = smallest f (a+1) b a (f a)
                     | a > b = where_smallest f b a

smallest f a b p m | a > b = p
                   | otherwise = smallest f (a+1) b pp mm
     where mm = min m (f a)
           pp = if m < (f a) then p else a
