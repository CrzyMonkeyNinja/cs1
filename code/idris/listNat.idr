module listNat

import nat
import pair
import bool

data listNat = nil | cons nat listNat

len: listNat -> nat
len nil = O
len (cons n l') = S (len l')

last: listNat -> nat
last (cons n nil) = n
last (cons n list) = last list

index: listNat -> nat -> nat
index (cons n nil) (S m) = n
index (cons n list) O = n
index (cons n list) (S m) = (index list m)

removeLast: listNat -> listNat
removeLast (cons n nil) = nil
removeLast (cons n list) = (cons n (removeLast list))

append: listNat -> listNat -> listNat
append nil list = list
append list nil = list
append (cons n list1) list2 = (cons n (append list1 list2))

snoc: nat -> listNat -> listNat
snoc n nil = (cons n nil)
snoc n list = append list (cons n nil)
