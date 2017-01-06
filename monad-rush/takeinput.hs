import qualified Data.Char as C

capitalize x = map C.toUpper x

main = do
    putStr "What is you name? "
    name <- getLine
    let n = capitalize name
    putStrLn ("Hello " ++ n ++ ", welcome to Haskell IO")
