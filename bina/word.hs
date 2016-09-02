-- original
--wordbuilding l = [fun [x] (remfun [x] l)| x <- l]
--
--remfun [x] l = [ys | ys<-l,not (ys==x)]
--checkfun x y = if product [0 | ys <- y,last x == head ys] == 0
--                   then True
--                   else False
--
--fun l1 l2 | checkfun (last l1) l2 = [fun (l1++[xs]) (remfun [xs] l2)| xs <- l2, head xs == last (last l1) ]
--          | otherwise = l1


wordbuilding l = concat [fun [x] (remfun [x] l)| x <- l]

remfun [x] l = [ys | ys<-l,not (ys==x)]

checkfun x y = if product [0 | ys <- y,last x == head ys] == 0
                   then True
                   else False

fun l1 l2 | checkfun (last l1) l2 = concat [fun (l1++[xs]) (remfun [xs] l2) | xs <- l2, head xs == last (last l1) ]
          | otherwise = [l1]
