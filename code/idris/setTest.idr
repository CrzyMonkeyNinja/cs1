import set
import eq
import nat
import list

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

b0: set bool
b0 = new_set

b1: set bool
b1 = set_insert true b0

b2: set bool
b2 = set_insert true b1

b3: set bool
b3 = set_insert false b1

sameSet1: bool
sameSet1 = eql (mkSet (true::false::nil)) (mkSet (false::true::nil))

sameSet2: bool
sameSet2 = eql (mkSet ((S O)::(S (S O))::nil)) (mkSet ((S (S O))::(S O)::(S (S (S O)))::nil))
