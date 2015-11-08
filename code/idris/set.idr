module set

import list
import ite
import eq

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

instance (eq a) => eq (set a) where
   eql (mkSet l1) (mkSet l2) = and (same_elements l1 l2) (same_elements l2 l1)

set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))

{-
set_remove: (eq a) => a -> set a -> seta
set_remove
-}
