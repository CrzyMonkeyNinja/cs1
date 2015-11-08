module bool
import pair

data bool = true | false

--Exam Problem #2: There are 16 possible ways to fill in the result
  --column for a truth table for a binary Boolean function, and there
  --are thus exactly 16 such functions, and no more

id_bool: bool -> bool
id_bool b = b

not: bool -> bool
not true = false
not _ = true

constTrue: bool -> bool
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false

andp: pair bool bool -> bool
andp (mkPair _ false) = false
andp (mkPair false _) = false
andp _ = true

nandp: pair bool bool -> bool
nandp (mkPair a b) = (not (andp (mkPair a b)))

orp: pair bool bool -> bool
orp (mkPair _ true) = true
orp (mkPair true _) = true
orp _ = false

xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp _ = false

pand: bool -> bool -> bool
pand true = id_bool
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = id_bool

pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue
