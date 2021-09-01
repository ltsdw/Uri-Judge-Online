-- title: Sequencia IJ 2
-- number of the problem: 1096
-- date: 24/09/20
-- author: ltsdw

myPrint :: Int -> Int -> IO ()
myPrint i j = do
    if i > 9
        then do
            return ()
    else do
        putStrLn $ "I=" ++ show i ++ " " ++ "J=" ++ show j
        myPrint (if j /= 5 then i else i + 2) (if j == 5 then 7 else j - 1)

main :: IO ()
main = myPrint 1 7
 
