-- Huffman coding
data Btree a = Leaf a | Node (Btree a) (Btree a)
  deriving (Show)

inputtree = Node (Leaf 'a') (Node (Node (Leaf 'b') (Node (Leaf 'c') (Leaf 'd'))) (Node (Node (Leaf 'e') (Leaf 'f')) (Node (Leaf 'g') (Leaf 'h'))))

decode l t = decode' l t
  where 
    decode' [] (Leaf a) = [a]
    decode' l (Leaf a) = a : decode' l t
    decode' [] (Node t1 t2) = error "badly coded string"
    decode' (0:xs) (Node t1 t2) = decode' xs t1
    decode' (1:xs) (Node t1 t2) = decode' xs t2


encode l t = concat [e | c <- l, (a,e) <- ent, a == c]
  where
    ent = encodedict t

encodedict (Leaf a) = [(a, [])]
encodedict (Node t1 t2) = (map (insert' 0) (encodedict t1)) ++ (map (insert' 1) (encodedict t2))
  where
    insert' d (a,b) = (a,d:b)
