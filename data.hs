{-
 - Test the use of data keyword
 -
 - Prelude> :l data
 - [1 of 1] Compiling Main             ( data.hs, interpreted )
 - Ok, modules loaded: Main.
 - *Main> myprintO O

 - <interactive>:3:10: error: Data constructor not in scope: O :: O
 - *Main>
 -}

data O
data C

myprintO :: O -> String
myprintO x = "OO"

myprintC :: C -> String 
myprintC x = "CC"
