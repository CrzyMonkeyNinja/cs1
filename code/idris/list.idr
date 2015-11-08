module list

import bool
import nat
import ite
import eq
import Serialize

infixr 7 ::, ++

data list a = nil | (::) a (list a)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)
  eql _ _ = false

stringVal: (Serialize a) => (list a) -> String
stringVal nil = ""
stringVal (h::nil) = (toString h)
stringVal (h::t) = (toString h) ++ ", " ++ (stringVal t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (stringVal l) ++ "]"

len: list a -> nat
len nil = O
len (n::l') = S (len l')

last: list a -> a
last (n::nil) = n
last (n::l') = last l'

myindex: list a -> Nat -> a
myindex (n::nil) (S m) = n
myindex (n::l') Z = n
myindex (n::l') (S m) = (myindex l' m)

removeLast: list a -> list a
removeLast (n::nil) = nil
removeLast (n::l') = (n::(removeLast l'))

||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::l1') l2 = h::(l1'++l2)

snoc: a -> list a -> list a
snoc n nil = (n::nil)
snoc n l1 = l1++(n::nil)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

||| give a list and a predicate on elements
||| return the sublist of elements for which
||| the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

foldr : (a -> b -> b) -> b -> (list a) -> b
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)

subset_elements: (eq a) => (list a) -> (list a) -> bool
subset_elements nil l2 = true
subset_elements (h::t) l2 = and (member h l2) (subset_elements t l2)

same_elements: (eq a) => (list a) -> (list a) -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)
