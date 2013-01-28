{-D3.js bindings for Fay-}
{-# LANGUAGE EmptyDataDecls    #-}
module Language.Fay.D3 (
    append,
    attr,
    d3data,
    enter,
    select,
    selectAll,
    style,
    styleWith,
    styleWithIndex,
    text,
    textWith,
    textWithIndex,
    D3
    ) where

import           FFI
import           Prelude

data D3
instance Foreign D3

-- | Work with data (d3.select().data([]))
data (Foreign a) => D3D a
instance (Foreign a) => Foreign (D3D a)

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

append :: (Foreign a) => String -> D3D a -> Fay (D3D a)
append = ffi "%2['append'](%1)"

attr :: (Foreign a) => String -> a -> D3 -> Fay D3
attr = ffi "%3['attr'](%1,%2)"

attrWith :: (Foreign a, Foreign d) => String -> (d -> Int -> a) -> D3 -> Fay D3
attrWith = ffi "%3['attr'](%1,%2)"

style :: String -> String -> D3 -> Fay D3
style = ffi "%3['style'](%1,%2)"

styleWith :: (Foreign a) => String -> (a -> String) -> D3D a -> Fay (D3D a)
styleWith = ffi "%3['style'](%1,%2)"

styleWithIndex :: (Foreign a) => String -> (a -> Int -> String) -> D3D a -> Fay (D3D a)
styleWithIndex = ffi "%3['style'](%1,%2)"

text :: String -> D3 -> Fay D3
text = ffi "%2['text'](%1)"

textWith :: (Foreign a) => (a -> String) -> D3D a -> Fay (D3D a)
textWith = ffi "%2['text'](%1)"

textWithIndex :: (Foreign a) => (a -> Int -> String) -> D3D a -> Fay (D3D a)
textWithIndex = ffi "%2['text'](%1)"

----
---- Data
----
d3data :: (Foreign a) => [a] -> D3 -> Fay (D3D a)
d3data = ffi "%2['data'](%1)"

enter :: (Foreign a) => D3D a -> Fay (D3D a)
enter = ffi "%1['enter']()"