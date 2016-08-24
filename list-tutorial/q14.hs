-- Problem 14
-- Define the function 'summands num' such that it gives all possible sum of +ve integers that give that number
-- summands 1 => [[1]]
-- summands 2 => [[1,1],[2]]
-- summands 3 => [[1,1,1],[1,2],[2,1],[3]]
-- summands 4 => [[1,1,1,1],[1,1,2],[1,2,1],[1,3],[2,1,1],[2,2], [3,1],[4]]
-- summands 5 => [[1,1,1,1,1],[1,1,1,2],[1,1,2,1],[1,1,3],[1,2,1,1], [1,2,2],[1,3,1],[1,4],[2,1,1,1],[2,1,2],[2,2,1], [2,3],[3,1,1],[3,2],[4,1],[5]]
--

summands 0 = [[]]
summands n = [x:xs | x <- [1..n], xs <- summands (n-x)]
