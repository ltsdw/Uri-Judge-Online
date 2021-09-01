-- title: Diferença
-- number of the problem: 1007
-- date: 20/09/20
-- author: ltsdw

myProduct :: (Int, Int, Int, Int) -> (Int, Int)
myProduct (a, b, c, d) = (a * b, c * d)

myDifference :: (Int, Int) -> Int
myDifference (prod_a, prod_b) = prod_a - prod_b

main :: IO ()
main = do
    a' <- getLine
    b' <- getLine
    c' <- getLine
    d' <- getLine

    let a = read a' :: Int
    let b = read b' :: Int
    let c = read c' :: Int
    let d = read d' :: Int

    let prod = myProduct (a, b, c, d)
    let diff = myDifference prod

    putStrLn $ "DIFERENCA = " ++ show diff
