module gunrow

import list
import option

||| A record of this type represents a counrty and the death
||| rate per 10,000,000 by gun for homocides, suicides,
||| unintentional, other
data Country = Argentina | Australia | Austria | Honduras | USA

data Gunrow = mkGunrow Country (option Nat) (option Nat) (option Nat) (option Nat)

argen: Gunrow
argen = mkGunrow Argentina (some 190) (some 279) (some 64) (some 362)

aust: Gunrow
aust = mkGunrow Australia (some 11) (some 62) (some 5) (some 8)

austri: Gunrow
austri = mkGunrow Austria (some 18) (some 268) (some 1) (some 8)

hond: Gunrow
hond = mkGunrow Honduras (some 648) none none none

usa: Gunrow
usa = mkGunrow USA (some 355) (some 670) (some 16) (some 9)

homicidePer10M: Gunrow -> option Nat
homicidePer10M (mkGunrow Country h s u o) = h

suicidePer10M: Gunrow -> option Nat
suicidePer10M (mkGunrow Country h s u o) = s

unintentionalPer10M: Gunrow -> option Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: Gunrow -> option Nat
otherPer10M (mkGunrow c h s u o) = o

table: list Gunrow
table = (argen::aust::austri::hond::usa::nil)
