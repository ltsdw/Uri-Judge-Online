-- title: Média 3
-- number of the problem: 1040
-- date: 22/09/20
-- author: ltsdw

import Text.Printf

main :: IO ()
main = do
    l1 <- getLine

    let (n1 : n2 : n3 : n4 : _) = map (read :: String -> Double) $ words l1

    let media = ( (n1 * 2.0) + (n2 * 3.0) + (n3 * 4.0) + (n4 * 1.0) ) / 10.0

    if media >= 7
        then
            printf "Media: %.1f\nAluno aprovado.\n" media

    else if media < 5
        then
            printf "Media: %.1f\nAluno reprovado.\n" media

    else if media >= 5 && media <= 6.9
        then do
            printf "Media: %.1f\nAluno em exame.\n" media

            exame' <- getLine

            let exame = read exame' :: Double

            let mediae = (exame + media) / 2.0

            printf "Nota do exame: %.1f\nAluno aprovado.\nMedia final: %.1f\n" exame mediae
    else
        return ()

