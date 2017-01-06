-- take input a line and print its each word in reverse

main = do
    line <- getLine
    if null line
        then return ()
        else
            do
                putStrLn $ reversewords line
                main

reversewords = unwords . map reverse . words
