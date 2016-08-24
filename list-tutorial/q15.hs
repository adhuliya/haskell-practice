-- Problem 15
-- All of you probably know the crypt-arithmetic puzzle:
--   s e n d
-- + m o r e
-- ----------
-- m o n e y
--
-- Here each of the alphabets above stand for a distinct digit such that the resulting addition is
-- correct. Write a Haskell expression using list comprehension which will solve the puzzle and
-- give the following output:
-- [(’s’,9),(’e’,5),(’n’,6),(’d’,7),(’m’,1),(’o’,0),(’r’,8),(’y’,2)].
--

solve = concat [[s,e,n,d,m,o,r,y] | 
            d <- [('d',d') | d' <- [9,8..0]],
            e <- [('e',e') | e' <- [9,8..0], e' /= snd d],
            y <- [('y',y') | y' <- [ones 0 d e], y' /= snd d, y' /= snd e],
            n <- [('n',n') | n' <- [9,8..0], n' /= snd d, n' /= snd e, n' /= snd y],
            r <- [('r',r') | r' <- [9,8..0], r' /= snd d, r' /= snd e, r' /= snd y, r' /= snd n],
            ones (carry 0 d e) n r == snd e,
            o <- [('o',o') | o' <- [9,8..0], o' /= snd d, o' /= snd e, o' /= snd y, o' /= snd n, o' /= snd r],
            ones (carry (carry 0 d e) n r) e o == snd n,
            s <- [('s',s') | s' <- [9,8..0], s' /= snd d, s' /= snd e, s' /= snd y, s' /= snd n, s' /= snd r, s' /= snd o],
            m <- [('m',m') | m' <- [9,8..1], m' /= snd d, m' /= snd e, m' /= snd y, m' /= snd n, m' /= snd r, m' /= snd o, m' /= snd s],
            ones (carry (carry (carry 0 d e) n r) e o) s m == snd o,
            carry (carry (carry (carry 0 d e) n r) e o) s m == snd m]
 where
   ones aa bb cc = (aa + snd bb + snd cc) `mod` 10
   carry aa bb cc = (aa + snd bb + snd cc) `div` 10
--   onessum = (snd d + snd e)
--   onescarry = onessum `div` 10
--   tenssum = onescarry + snd n + snd r
--   tenscarry = tenssum `div` 10
--   hundredssum = tenscarry + snd e + snd o
--   hundredscarry = hundredssum `div` 10
--   thousandssum = hundredscarry + snd s + snd m
--   thousandscarry = thousandssum `div` 10
--
--   ones =  onessum `mod` 10
--   tens =  tenssum `mod` 10
--   hundreds = hundredssum `mod` 10
--   thousands = thousandssum `mod` 10
--   carry = thousandscarry


