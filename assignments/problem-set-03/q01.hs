--Consider a tree defined by the following datatype:
--
--data Tree a = Node (Tree a) a (Tree a) | Null
--
--The diameter of a tree is the length of the longest path from one leaf to another, counted by
--the number of nodes in the path. Write a function dia t that will return the diameter of the
--tree t. The figure below illustrates the notion of diameter.
--

data Tree a = Node (Tree a) a (Tree a) | Null
  deriving (Show)

treeinput = Node (Node (Node (Node Null True Null)
                             True
                             (Node (Node (Node Null True Null)
                                         True
                                         (Node Null True Null)) 
                                   True
                                   Null))
                       True
                       (Node Null
                             True
                             (Node (Node Null True Null)
                                   True 
                                   (Node Null 
                                         True 
                                         (Node Null True Null)))))
                 True
                 (Node Null
                       True
                       (Node Null True Null))

dia t = snd $ dia' t

-- (maxheight, diameter)
dia' Null = (0,0)
dia' (Node Null a Null) = (1, 1)
dia' (Node t1 a t2) = (1+h, if d' > d then d' else d)
  where
    (h1,d1) = dia' t1
    (h2,d2) = dia' t2
    h = max h1 h2
    d = max d1 d2
    d' = h1 + h2 + 1
