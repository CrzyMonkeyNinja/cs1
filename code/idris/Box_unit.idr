module Box

import Unit

data Box = mkBox unit

b1: Box
b1 = mkBox mkUnit

unbox: Box -> unit
unbox _ = mkUnit
