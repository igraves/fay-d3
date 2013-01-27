Fay D3
======

D3.js bindings for Fay.

Usage
-----
In fay >= 0.12, compile with
```bash
fay --package fay-d3 Main.hs
```

To run the example, you need to have fay-jquery installed. Run
```bash
fay --package fay-jquery,fay-d3 --html-wrapper --html-js-lib d3.v2.js,jquery-1.8.0.min.js test.hs
```
(assuming JQuery and D3 libraries in this folder) and open test.html in a browser.

License
-------
MIT License (see LICENSE)