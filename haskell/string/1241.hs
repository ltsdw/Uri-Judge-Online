-- title: Encaixa ou Não II
-- number of the problem: 1241
-- date: 25/09/20
-- author: ltsdw

isPrefixOf'              :: (Eq a) => [a] -> [a] -> Bool
isPrefixOf' [] _         =  True
isPrefixOf' _  []        =  False
isPrefixOf' (x:xs) (y:ys)=  x == y && isPrefixOf' xs ys

isSuffixOf'              :: (Eq a) => [a] -> [a] -> Bool
isSuffixOf' x y          =  isPrefixOf' (reverse x) (reverse y)

myLoop :: Int -> IO ()
myLoop n_cases = do
    if n_cases > 0
        then do
            str <- getLine
            let (word : suffix : _) = words str
            if isSuffixOf' suffix word
                then putStrLn "encaixa"
            else
                putStrLn "nao encaixa"
            myLoop (n_cases - 1)
    else do
        return ()

main :: IO ()
main = do
    n <- getLine
    let n_cases = read n :: Int
    myLoop n_cases

