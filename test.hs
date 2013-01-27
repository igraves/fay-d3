{- Some visualisations with D3.js-}

module Test (main) where

import Language.Fay.D3
import Language.Fay.JQuery (ready)
import FFI
import Prelude

main :: Fay ()
main = ready $ do
    b <- select "body"
    s <- append "svg" b
    attr "width" width s
    attr "height" height s
    return ()
    where
        width = 120 :: Int
        height = 120 :: Int