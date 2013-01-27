{-D3.js bindings for Fay-}
{-# LANGUAGE EmptyDataDecls    #-}
module Language.Fay.D3 (
	append,
	attr,
	d3data,
	enter,
	select,
	selectAll,
	text,
	textWith,
	D3
	) where

import           FFI
import           Prelude

data D3
instance Foreign D3

----
---- Select
----

select :: String -> Fay D3
select = ffi "d3['select'](%1)"

selectAll :: String -> D3 -> Fay D3
selectAll = ffi "%2['selectAll'](%1)"

----
---- Selection API
----

append :: String -> D3 -> Fay D3
append = ffi "%2['append'](%1)"

attr :: (Foreign a) => String -> a -> D3 -> Fay D3
attr = ffi "%3['attr'](%1,%2)"

attrWith :: (Foreign a, Foreign d) => String -> (d -> Int -> a) -> D3 -> Fay D3
attrWith = ffi "%3['attr'](%1,%2)"

text :: String -> D3 -> Fay D3
text = ffi "%2['text'](%1)"

textWith :: (Foreign a) => (a -> String) -> D3 -> Fay D3
textWith = ffi "%2['text'](%1)"

----
---- Data
----
d3data :: (Foreign a) => [a] -> D3 -> Fay D3
d3data = ffi "%2['data'](%1)"

enter :: D3 -> Fay D3
enter = ffi "%1['enter']()"