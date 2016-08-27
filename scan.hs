-- scan functions
--
myscanl f acc [] = [acc]
myscanl f acc (x:xs) = acc : myscanl f (f acc x) xs

myscanr f id [] = [id]
myscanr f id (x:xs) = (f x y): (y:ys)
  where
    (y:ys) = myscanr f id xs

