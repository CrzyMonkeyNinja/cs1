module nat

import bool
import pair

||| A data type to represent the natural numbers. We use a lower case
||| "n" in the name to distinguish our nat type from Idris' Nat type
data nat = O | S nat

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
tw: nat
tw = S (S O)

-- three
th: nat
th = S tw

-- four
fo: nat
fo = S th

-- five
fi: nat
fi = S fo

-- six
si: nat
si = S fi

-- seven
se: nat
se = S si

-- eight
ei: nat
ei = S se

-- nine
ni: nat
ni = S ei

-- ten
te: nat
te = S ni

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false


||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat-> nat
pred O = O
pred (S n) = n

||| return true if the argument is even, otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
--addp (mkPair m O) = m
--addp (mkPair (S n) m) = addp (mkPair (succ (S n)) (pred m))
addp (mkPair (S n) m) = (S (addp (mkPair n m)))

a1: nat
a1 = (addp (mkPair th fo))

||| given a pair of natural numbers, return the difference (or zero if difference is negative)
subp: pair nat nat -> nat
subp (mkPair n O) = n
subp (mkPair O m) = m
subp (mkPair (S n) (S m)) = subp (mkPair n m)

s1: nat
s1 = subp (mkPair fo th)

multp: pair nat nat -> nat
multp (mkPair m O) = O
multp (mkPair O m) = O
multp (mkPair (S n) m) = (addp (mkPair m (multp (mkPair n m))))

m1: nat
m1 = (multp (mkPair tw th))

factp: nat -> nat
factp O = (S O)
factp (S n') = multp (mkPair (S n') (factp n'))

f1: nat
f1 = factp th

lep: pair nat nat -> bool
lep (mkPair O m) = true
lep (mkPair (S n) O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)

exp: pair nat nat -> nat
exp (mkPair O n) = O
exp (mkPair (S O) n) = (S O)
exp (mkPair x (S O)) = x
exp (mkPair x (S n)) = (multp (mkPair (exp (mkPair x n)) x))

eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair n O) = false
eqp (mkPair O n) = false
eqp (mkPair (S n) (S m)) = eqp (mkPair n m)

gtp: pair nat nat -> bool
gtp (mkPair O O) = false
gtp (mkPair n O) = true
gtp (mkPair O n) = false
gtp (mkPair (S n) (S m)) = gtp (mkPair n m)

gep: pair nat nat -> bool
gep (mkPair n O) = true
gep (mkPair O (S n)) = false
gep (mkPair (S n) (S m)) = gep (mkPair n m)

ltp: pair nat nat-> bool
ltp (mkPair O O) = false
ltp (mkPair n O) = false
ltp (mkPair O m) = true
ltp (mkPair (S n) (S m)) = ltp (mkPair n m)
