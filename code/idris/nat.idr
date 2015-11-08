module nat

import bool
import pair
import eq
import Serialize

||| A data type to represent the natural numbers. We use a lower case
||| "n" in the name to distinguish our nat type from Idris' nat type
data nat = O | S nat

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
   toString O = "Z"
   toString (S n) = "s" ++ (toString n)

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

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S O) m = m
mult (S n) m = add m (mult n m)

exp: nat -> nat -> nat
exp O n = O
exp x O = (S O)
exp x (S O) = x
exp x (S n) = mult (exp x n) x

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib n) (fib (S n))

ge: nat -> nat -> bool
ge n O = true
ge O (S m) = false
ge (S n) (S m) = ge n m

lt: nat -> nat -> bool
lt n m = not (ge n m)

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

gt: nat -> nat -> bool
gt n m = not (le n m)
