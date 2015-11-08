module dna

import pair
import list

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand l = map complement_base l

strand1: list (pair base base) -> list base
strand1 l = map fst l

strand2: list (pair base base) -> list base
strand2 l = map snd l

compPair: base -> (pair base base)
compPair b = (mkPair b (complement_base b))

complete: list base -> list (pair base base)
complete l = map compPair l

numBase: base -> base -> Nat
numBase A A = 1
numBase T T = 1
numBase C C = 1
numBase G G = 1
numBase _ _ = 0

countBase: base -> list base -> Nat
countBase b l = list.foldr plus 0 (map (numBase b) l)
