module listExample

import elements
import bool
import list
import nat
import relation

table: list Element
table = H::He::Li::Be::B::C::N::O::F::Ne::nil

hyd: String
hyd = name H

Bmass: Nat
Bmass = mass B

names: list String
names = map name table

masses: list Nat
masses = map mass table

metalicities: list bool
metalicities = map metalicity table

query2Test: Nat
query2Test = query2 table metalicity mass plus 0

notMetal: Element -> bool
notMetal e = not (metalicity e)

query2Test2: Nat
query2Test2 = query2 table notMetal mass plus 0

query2Test3: Nat
query2Test3 = query2 table metalicity number mult 1

query2Test4: String
query2Test4 = query2 table metalicity name (++) ""
