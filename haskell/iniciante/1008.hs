-- title: Salário
-- number of the problem: 1008
-- date: 20/09/20
-- author: ltsdw

import Text.Printf

returnSalary :: (Int, Double) -> Double
returnSalary (worked_hours, hour_value) = fromIntegral worked_hours * hour_value

printInfo :: (Int, Double) -> IO ()
printInfo (worker_number, salary) = do
    printf "NUMBER = %d\n" worker_number
    printf "SALARY = U$ %.02f\n" salary


main :: IO()
main = do
    worker_number' <- getLine
    worked_hours' <- getLine
    hour_value' <- getLine

    let worker_number = read worker_number' :: Int
    let worked_hours = read worked_hours' :: Int
    let hour_value = read hour_value' :: Double

    let salary = returnSalary (worked_hours, hour_value)

    printInfo (worker_number, salary)
