-- title: Zero vale Zero
-- number of the problem: 1871
-- date: 29/09/20
-- author: ltsdw

import Control.Monad (unless)

removeZero :: Int -> String
removeZero num = rz (show num)
    where rz []           = []
          rz ('0':xs)     = rz xs
          rz (x:xs)       = x : rz xs

main :: IO ()
main = do
    l1 <- getLine
    let (n1:n2:_) = map (read :: String -> Int) (words l1)
    unless (n1 == 0 && n2 == 0) $ do
        putStrLn (removeZero (n1 + n2))
        main

