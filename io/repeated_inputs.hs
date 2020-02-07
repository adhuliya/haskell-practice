-- this program repeatedly takes a line of input
-- prints the same line back with each word reversed
-- till the user enters a blank line
-- compile using: ghc --make repeated_inputs.hs
--            or: runhaskell repeated_inputs.hs
main = do
    line <- getLine
    if null line
        then return ()
        else do
            putStrLn $ reverseWords line
            main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
