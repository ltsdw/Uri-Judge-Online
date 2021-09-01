-- title: Reduzindo Detalhes em um Mapa
-- number of the problem: 2404
-- date: 19/01/21
-- author: ltsdw

module Main

(   Edge (..),
    main
) where

import qualified Data.IntSet as S
import Data.List (sort)
import Control.Monad (replicateM)

type Vertex = Int
type Weight = Int

a = 1
asd = 2
asdasdas = 3

data Edge = Edge
    {   vertexU :: Vertex,
        vertexV :: Vertex,
        weight :: Weight
    } deriving Eq

instance Ord Edge where
    compare (Edge vrtxU vrtxV wght) (Edge vrtxU' vrtxV' wght') =
        compare (wght, min vrtxU vrtxV, max vrtxU vrtxV)
                (wght', max vrtxU' vrtxV', max vrtxU' vrtxV')

prim :: [Edge] -> Weight
prim iEdges = prim' (sort iEdges) (S.singleton 1)
    where
        prim' []    _           = 0
        prim' edges outgoing    =
            let (wght, vrtx)                        = findNextEdge edges outgoing
                newOutgoing                         = vrtx `S.insert` outgoing
                isCyclicEdge (Edge vrtxU vrtxV _)   =
                    vrtxU `S.member` newOutgoing && vrtxV `S.member` newOutgoing
                newEdges                            = filter (not . isCyclicEdge) edges
            in wght + prim' newEdges newOutgoing

        findNextEdge :: [Edge] -> S.IntSet -> (Weight, Vertex)
        findNextEdge ((Edge vrtxU vrtxV wght):edges) outgoing
            | vrtxU `S.member` outgoing = (wght, vrtxV)
            | vrtxV `S.member` outgoing = (wght, vrtxU)
            | otherwise                 = findNextEdge edges outgoing

main :: IO ()
main = do
    line <- getLine
    let (_:m:_) = map (read :: String -> Int) $ words line
    sEdges <- replicateM m getLine
    let graph = toEdges sEdges
    putStrLn $ show $ prim graph

toEdges :: [String] -> [Edge]
toEdges = foldl (\acc x -> (f . map read . words $ x):acc) []
    where
        f [vrtxU, vrtxV, w] = Edge vrtxU vrtxV w

