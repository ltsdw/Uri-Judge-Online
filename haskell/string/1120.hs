-- title: Revisão de Contrato
-- number of the problem: 1120
-- date: 25/09/20
-- author: ltsdw

myLoop :: [Char] -> [Char] -> IO ()
myLoop digit number = do
    l1 <- getLine 
    let (digit : number: _) = words l1
    if digit /= "0" && number /= "0"
        then do
            let correct_number = filter (/= head digit) number
            print (if correct_number /= [] then (read correct_number :: Integer) else 0)
            myLoop digit number
    else do return ()

main :: IO ()
main = myLoop "1" "1"

