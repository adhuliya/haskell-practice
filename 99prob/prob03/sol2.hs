-- by Prasanna
elementAt l n = head (foldr g id l)
  where
    id = [error "out of range of the list", length l]
    -- id = error "out of range of the list"
    g a  res    | n == (head (tail res) - 1) = [a, head (tail res) -1]
                | n < (head (tail res) - 1) = [a, head (tail res) -1]
                | n > (head (tail res) - 1) = [head res, head (tail res ) - 1]
