module pairTest

import days
import bool
import Unit
import pair

p1: pair bool bool
p1 = mkPair true false

p2: pair unit bool
p2 = mkPair mkUnit false

and: pair bool bool -> bool
and (mkPair _ false) = false
and (mkPair false _) = false
and _ = true

or: pair bool bool -> bool
or (mkPair _ true) = true
or (mkPair true _) = true
or _ = false

exor: pair bool bool -> bool
exor (mkPair true false) = true
exor (mkPair false true) = true
exor _ = false
