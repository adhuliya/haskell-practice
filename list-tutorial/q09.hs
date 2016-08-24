-- Problem 9
--Consider a 2-D map with a horizontal river passing through its center. There are n cities on
--the southern bank in the order [a 1 , . . . , a n ] and similarly there are n cities on the northern
--bank in the order [b 1 , . . . , b n ]. You want to connect as many north-south pairs of cities as
--possible with bridges such that no two bridges cross. When connecting cities, you can only
--connect city a i to b j , if a i = b j .
--As an example, if southern bank cities are in the order [2,3,1,6,4,5,7] and northern bank cities
--are in the order [6,4,2,7,1,3,5], then one of the solutions is to connect cities [2,3,5]. A 4-bridge
--solution does not exist. Your function should be called connect and should return the list of
--cities which should be connected.


-- This problem is the longest common subsequence problem in a different form
connect [] _ = []
connect _ [] = []
connect (x:xs) (y:ys) | x == y = x : rem1
                      | otherwise = rem2
  where
    rem1 = connect xs ys
    connectx = connect xs (y:ys)
    connecty = connect (x:xs) ys
    rem2 = if length connectx > length connecty then connectx else connecty

