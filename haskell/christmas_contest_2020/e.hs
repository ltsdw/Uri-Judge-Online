import Data.List

type Node = Int
type Edge = (Node,Node)
type Graph = ([Node],[Edge])

depthfirst :: Graph -> Node -> [Node]
depthfirst (v,e) n
    | null [x|x<-v,x==n] = []
    | otherwise = dfrecursive (v,e) [n]
    
dfrecursive :: Graph -> [Node] -> [Node]
dfrecursive ([],_) _ = []
dfrecursive (_,_) [] = []
dfrecursive (v,e) (top:stack)
    | null [x|x<-v,x==top] = dfrecursive (newv, e) stack
    | otherwise = top : dfrecursive (newv, e) (adjacent ++ stack)
    where
        adjacent = [x | (x,y)<-e,y==top] ++ [x | (y,x)<-e,y==top]
        newv = [x|x<-v,x/=top]
        
connectedComponents :: Graph -> [[Node]]
connectedComponents ([],_) = []
connectedComponents (top:v,e) 
    | null remaining = [connected]
    | otherwise = connected : connectedComponents (remaining, e)
    where
        connected = depthfirst (top:v,e) top
        remaining = (top:v) \\ connected

resolve :: Bool -> String
resolve True    = "COMPLETO"
resolve False   = "INCOMPLETO"

loop :: Int -> Int -> [(Int, Int)] -> IO ()
loop found cases acc
    | cases > 0 = do
        l <- getLine
        let (a:b:_) = map (read :: String -> Int) (words l)
        loop found (cases - 1) ((a,b) : acc)
    | otherwise = putStrLn (resolve (found `elem` head (connectedComponents ([1..found], acc))))

main :: IO ()
main = do
    l <- getLine
    let (found:cases:_) = map (read :: String -> Int) (words l)
    loop found cases []

