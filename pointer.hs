data Pointer a = SP a | P (Pointer a) deriving(Show)
data Var a = V a
data Const a = C a

-- data A a = Const a | Var a | Pointer a
-- data B a = Var a | Pointer a
-- data C a = Pointer a

x = P (P (SP 4))

f :: Show a => a -> a
f a = a

