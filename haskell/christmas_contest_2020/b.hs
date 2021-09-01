test :: String -> String -> Int -> (String, Int, Int)
test _ b c
    | b == "bonecos"    = ("bonecos", c `div` 8, mod c 8)
    | b == "arquitetos" = ("arquitetos", c `div` 4, mod c 4)
    | b == "musicos"    = ("musicos", c `div` 6, mod c 6)
    | otherwise         = ("desenhistas", c `div` 12, mod c 12)

insertAt :: Int -> Int -> [Int] -> [Int]
insertAt elem 0 [v, x, y, z] = [elem, x, y, z]
insertAt elem 1 [v, x, y, z] = [v, elem, y, z]
insertAt elem 2 [v, x, y, z] = [v, x, elem, z]
insertAt elem 3 [v, x, y, z] = [v, x, y, elem]

first :: (String, Int, Int) -> String
first (a,_,_) = a

second :: (String, Int, Int) -> Int
second (_,b,_) = b

third :: (String, Int, Int) -> Int
third (_,_,c) = c

mysum :: [Int] -> Int
mysum []        = 0
mysum [v,x,y,z] = (v `div` 8) + (x `div` 4) + (y `div` 6) + (z `div` 12)

loop :: Int -> [Int] -> [Int] -> IO ()
loop cases acc rest
    | cases > 0 = do
        l <- getLine
        let (a:b:c:_) = words l
        let t = test a b (read c :: Int)
        let t' = second t
        if t' >= 0 then
            if b == "bonecos" then
                loop (cases - 1) (t' : acc) (insertAt (third t + head rest) 0 rest)
            else if b == "arquitetos" then
                loop (cases - 1) (t' : acc) (insertAt (third t + (rest !! 1)) 1 rest)
            else if b == "musicos" then
                loop (cases - 1) (t' : acc) (insertAt (third t + (rest !! 2)) 2 rest)
            else
                loop (cases - 1) (t' : acc) (insertAt (third t + (rest !! 3)) 3 rest)
            else  loop (cases - 1) acc rest
    | otherwise = print (mysum rest + sum acc)

main :: IO ()
main = do
    cases <- getLine
    loop (read cases :: Int) [] [0, 0, 0, 0]

