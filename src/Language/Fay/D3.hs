{-D3.js bindings for Fay-}
{-# LANGUAGE EmptyDataDecls    #-}
module Language.Fay.D3 (
	select,
	append,
	attr,
	D3
	) where

import           FFI
import           Prelude

data D3
instance Foreign D3

select :: String -> Fay D3
select = ffi "d3['select'](%1)"

append :: String -> D3 -> Fay D3
append = ffi "%2['append'](%1)"

attr :: (Foreign a) => String -> a -> D3 -> Fay D3
attr = ffi "%3['attr'](%1,%2)"