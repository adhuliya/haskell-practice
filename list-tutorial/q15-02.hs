result = [[s,e,n,d,m,o,r,y] | 
              d <- [0..9], 
              e <- [0..9], 
              d /= e,
              let de = d+e, 
              let dec = de `div` 10, 
              y <- [de `mod` 10],
              y /= e, y /= d,
              n <- [0..9],
              n /= y, n /= e, n /= d,
              r <- [0..9],
              r /= n, r /= y, r /= e, r /= d,
              let nr = n+r+dec, 
              let nrc = nr `div` 10, 
              e == nr `mod` 10,
              o <- [0..9],
              o /= r, o /= n, o /= y, o /= e, o /= d,
              let eo = e+o+nrc,
              let eoc = eo `div` 10,
              n == eo `mod` 10,
              s <- [0..9],
              s /= o, s /= r, s /= n, s /= y, s /= e, s /= d,
              m <- [1],
              m /= s, m /= o, m /= r, m /= n, m /= y, m /= e, m /= d,
              let sm = s + m + eoc,
              let smc = sm `div` 10,
              o == sm `mod` 10,
              m == smc]

              
