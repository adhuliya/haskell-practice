--An old question took form previous papers (Quiz1-20150828)
-- given a list [x1,x2,x3]
-- output : [x2*x3, x1*x3, x1*x2]

prodseq [] = error "No empty list allowed"
prodseq x = prodseq' [] x

prodseq' p [] = []
prodseq' p (x:xs) = (product p * product xs): prodseq' (x:p) xs

