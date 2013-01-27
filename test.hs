{- Some visualisations with D3.js-}

module Test (main) where

import Language.Fay.D3
import Language.Fay.JQuery (ready)
import FFI
import Prelude

(>=>)       :: (a -> Fay b) -> (b -> Fay c) -> (a -> Fay c)
f >=> g     = \x -> f x >>= g

numbers :: [Int]
numbers = [5, 10, 15]

main :: Fay ()
main = ready $ do
    p <- select "body" >>= selectAll "p" >>= d3data numbers >>= enter >>= append "p" >>= textWith (show :: Int -> String)
    return ()