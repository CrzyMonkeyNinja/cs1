module friend

import bool

record Person where
  constructor MkPerson
  name : String
  age : Nat

--newName : Person -> String -> Person
--newName p n

||| A friend is someone who is or isn't trustworthy, who has a name, and who has an age in years
data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Bill" 349

f2: friend
f2 = mkFriend false "Schliemann" 20180

getTrust: friend -> bool
getTrust (mkFriend b s n) = b

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s
