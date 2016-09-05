-- Question 5
-- Convert a C style tree to Haskell style (g-to-b) and viceversa (b-to-g)
-- C style: f(g(x,l), h(l), 5)
-- Haskell style: f (g x l) (h l) 5)

data Gtree a = Gnode a [Gtree a]
  deriving (Show, Eq)

cstyle = Gnode 'f' [Gnode 'g' [Gnode 'x' [], Gnode 'l' []], Gnode 'h' [Gnode 'l' []], Gnode '5' []]

data Btree a = Bnode (Btree a) (Btree a) | Leaf a
  deriving (Show, Eq)

hstyle = Bnode (Bnode (Bnode (Leaf 'f') (Bnode (Bnode (Leaf 'g') (Leaf 'x')) (Leaf 'l'))) (Bnode (Leaf 'h') (Leaf 'l'))) (Leaf '5')


gtob (Gnode x []) = Leaf x
gtob (Gnode x l@(y:ys)) = Bnode (gtob (Gnode x (init l))) (gtob (last l))

btog (Leaf x) = Gnode x []
btog (Bnode t1 t2) = (btog t1) `addChild` (btog t2)
  where
    addChild (Gnode x y) t = Gnode x (y ++ [t])
