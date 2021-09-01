-- title: Aumento de Salário
-- number of the problem: 1048
-- date: 23/09/20
-- author: ltsdw

import Text.Printf

main :: IO ()
main = do
    salary' <- getLine
    let salary = read salary' :: Double
    if salary <= 400.00
        then do
            printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: 15" (salary + ((salary * 15) / 100)) ((salary * 15) / 100)
            putStrLn " %"
    else if salary <= 800.00
        then do
            printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: 12" (salary + ((salary * 12) / 100)) ((salary * 12) / 100)
            putStrLn " %"
    else if salary <= 1200.00
        then do
            printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: 10" (salary + ((salary * 10) / 100)) ((salary * 10) / 100)
            putStrLn " %"
    else if salary <= 2000.00
        then do
            printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: 7" (salary + ((salary * 7 ) / 100)) ((salary * 7 ) / 100)
            putStrLn " %"
    else do
        printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: 4" (salary + ((salary * 4 ) / 100)) ((salary * 4 ) / 100)
        putStrLn " %"

