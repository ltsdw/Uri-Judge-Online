-- title: Sequencia IJ 3
-- number of the problem: 1097
-- date: 24/09/20
-- author: ltsdw

myPrint :: Int -> Int -> IO ()
myPrint i j = do
    if i > 9
        then do
            return ()
    else do
        putStrLn $ "I=" ++ show i ++ " " ++ "J=" ++ show j
        myPrint (if j - i == 4 then i + 2 else i) (if j - i == 4 then j + 4 else j - 1)

main :: IO ()
main = myPrint 1 7

