-- title: Salário com Bônus
-- number of the problem: 1009
-- date: 20/09/20
-- author: ltsdw

import Text.Printf

percentage = 15

returnSalaryWithBonus :: (Double, Double) -> Double
returnSalaryWithBonus (salary, sales) = salary + (sales * 15 / 100)

printInfo :: Double -> IO ()
printInfo salary_with_bonus = do
    printf "TOTAL = R$ %.2f\n" salary_with_bonus

main :: IO ()
main = do
    _ <- getLine
    salary' <- getLine
    sales' <- getLine

    let salary = read salary' :: Double
    let sales = read sales' :: Double

    let salary_with_bonus = returnSalaryWithBonus (salary, sales)

    printInfo salary_with_bonus
