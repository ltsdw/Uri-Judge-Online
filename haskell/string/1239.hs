-- title: Atalhos Bloggo
-- number of the problem: 1239
-- date: 28/09/20
-- author: ltsdw

import System.IO (isEOF)

main :: IO ()
main = whileNotEOF

whileNotEOF :: IO ()
whileNotEOF = do
    done <- isEOF
    if not done
    then do
        string <- getLine
        putStrLn (tagHtml string False False)
        whileNotEOF
    else do return ()

tagHtml :: [Char] -> Bool -> Bool -> [Char]
tagHtml []                  _               _           = []
tagHtml ('_' : xs)          False           tag_bold    = '<' : 'i' : '>' :             tagHtml xs True             tag_bold
tagHtml ('_' : xs)          True            tag_bold    = '<' : '/' : 'i' : '>' :       tagHtml xs False            tag_bold
tagHtml ('*' : xs)          tag_underline   False       = '<' : 'b' : '>' :             tagHtml xs tag_underline    True
tagHtml ('*' : xs)          tag_underline   True        = '<' : '/' : 'b' : '>' :       tagHtml xs tag_underline    False
tagHtml (x   : '_' : xs)    False           tag_bold    = x   : '<' : 'i' : '>' :       tagHtml xs True             tag_bold
tagHtml (x   : '_' : xs)    True            tag_bold    = x   : '<' : '/' : 'i' : '>' : tagHtml xs False            tag_bold
tagHtml (x   : '*' : xs)    tag_underline   False       = x   : '<' : 'b' : '>' :       tagHtml xs tag_underline    True
tagHtml (x   : '*' : xs)    tag_underline   True        = x   : '<' : '/' : 'b' : '>' : tagHtml xs tag_underline    False
tagHtml (x   : xs)          tag_underline   tag_bold    = x   :                         tagHtml xs tag_underline    tag_bold

