--mysequence ["bat", "tak", "tatc", "cat"]

--mysequence d = map reverse . concat . map (subseq d) . concat . map (subseq d) . concat . map (subseq d) $ map (:[]) d
--
--subseq d cur | null y = cur:[]
--             | True = map (:cur) y
--  where
--    y = fltr d cur
--
--fltr d cur = [w |w <- d, head w == last (head cur), w `notElem` cur]

---------------------------------------------------------------------------
--Correct Solution
---------------------------------------------------------------------------
-- words cross product
wcp d c 0 = c
wcp d c n = c ++ wcp d [d':c'| d' <- d, c' <- c] (n-1)


wordbuilding d = [reverse x | x <- (wcp d [[]] (length d)), length x > 1, not (null x), fltr1 d x]

fltr1 d x = nodup x && goodseq x && fltr d x == []
fltr d cur = [w |w <- d, head w == last (head cur), w `notElem` cur]

nodup [] = True
nodup (x:xs) = x `notElem` xs && nodup xs

goodseq [] = True
goodseq (x:[]) = True
goodseq (x:xs) = head x == (last . head $ xs) && goodseq xs
