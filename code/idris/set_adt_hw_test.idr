import set_adt_hw
import list
import bool
import nat
import option
import pair
import ite
import eq
import Serialize

list1: list nat
list1 = ((S O)::(S (S O))::(S (S (S O)))::nil)

list2: list nat
list2 = ((S O)::O::(S (S (S (S O))))::(S (S O))::nil)

list3: list nat
list3 = O::(S (S O))::(S (S (S (S O))))::nil

list4: list bool
list4 = true::false::true::nil

list5: list nat
list5 = (S O)::(S (S (S O)))::nil

list_remove1: list nat
list_remove1 = (list_remove (S O) list1)

list_remove2: list nat
list_remove2 = (list_remove (S (S O)) list1)

cardinality1: nat
cardinality1 = set_cardinality (mkSet list1)

member1: bool
member1 = set_member (S O) (mkSet list1)

member2: bool
member2 = set_member O (mkSet list1)

combine1: list nat
combine1 = combine list1 list2

combine2: list bool
combine2 = combine (true::nil) (true::false::nil)

combine3: list nat
combine3 = combine list2 list1

combine4: list bool
combine4 = combine (true::false::nil) (true::nil)

set_union1: set nat
set_union1 = set_union (mkSet list2) (mkSet list1)

set_union2: set nat
set_union2 = set_union (mkSet list1) (mkSet list2)

intersect1: list nat
intersect1 = intersect list1 list2

intersect2: list nat
intersect2 = intersect list2 list1

difference1: list nat
difference1 = list_difference list1 list2

difference2: list nat
difference2 = list_difference list2 list1

forall1: bool
forall1 = set_forall evenb (mkSet list1)

forall2: bool
forall2 = set_forall evenb (mkSet list2)

forall3: bool
forall3 = set_forall evenb (mkSet list3)

exists1: bool
exists1 = set_exists evenb (mkSet list1)

exists2: bool
exists2 = set_exists evenb (mkSet list2)

exists3: bool
exists3 = set_exists evenb (mkSet list5)

witness1: option nat
witness1 = set_witness isZero (mkSet list1)

witness2: option nat
witness2 = set_witness isZero (mkSet list2)

product1: set (pair nat bool)
product1 = set_product (mkSet list1) (mkSet list4)

product2: set (pair nat bool)
product2 = set_product (mkSet list1) (mkSet (true::false::nil))

eql1: bool
eql1 = set_eql (mkSet (true::false::nil)) (mkSet (false::true::nil))

string1: String
string1 = set_toString (mkSet list1)

string2: String
string2 = set_toString (mkSet list2)

string3: String
string3 = set_toString (mkSet list3)

string4: String
string4 = set_toString (mkSet list4)
