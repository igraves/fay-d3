{- Some visualisations with D3.js-}

module Test (main) where

import Language.Fay.D3
import Language.Fay.JQuery (ready)
import FFI
import Prelude

data MyData = Number Int | Label String

instance Foreign MyData

numbers :: [MyData]
numbers = [Number 5, Number 10, Label "L1"]

main :: Fay ()
main = ready $ do
    select "body" >>= 
        selectAll "p" >>= 
            d3data numbers >>= 
                enter >>= 
                    append "p" >>= 
                        htmlWith (\_ -> "<div>Div1</div>")
    return ()