module bool

import Serialize

data bool = true | false

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"

id_bool: bool -> bool
id_bool b = b

not: bool -> bool
not true = false
not _ = true

constTrue: bool -> bool
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or _ true = true
or true _ = true
or _ _ = false

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

nand: bool -> bool -> bool
nand a b = not (and a b)
