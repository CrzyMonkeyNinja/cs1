import nat
import pair
import bool
import list
import eq
import Serialize

li: list bool
li = true::false::true::true::nil

l0: list nat
l0 = nil

l1: list nat
l1 = ((S O)::nil)

l2: list nat
l2 = ((S O)::(S (S O))::nil)

l3: list nat
l3 = ((S O)::(S (S O))::(S (S (S O)))::nil)

l4: list nat
l4= ((S O)::(S (S (S O)))::nil)

l5: list bool
l5 = (true::false::nil)

||| test expecting (S (S (S O)))
len1: Nat
len1 = (len l3)

||| test expecting 0
len2: Nat
len2 = len nil {a = Nat}

||| test expecting (cons (S (S O)) (cons (S O) (cons (S (S (S O))))))
ap1: list nat
ap1 = ((S O)::(S (S O))::nil)++((S (S (S O)))::nil)

||| test expecting (cons (S (S O)) (cons (S O) (cons (O) (cons (S (S O)) (cons (S (S (S O))) (cons O nil))))))
ap2: list nat
ap2 = ((S O)::(S (S O))::O::nil)++((S (S O))::(S (S (S O)))::O::nil)

||| test expecting (cons (S O) nil)
ap3: list nat
ap3 = (nil)++(l1)

||| test expecting (S (S (S O)))
lst1: nat
lst1 = last l3

||| test expecting (S (S (S O)))
indx1: nat
indx1 = myindex (l3) 2

||| test expecting (cons (S O) (cons (S (S O)) nil))
remL1: list nat
remL1 = removeLast l3

||| test expecting (true::false::true::true::nil)
map1: list bool
map1 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

||| test expecting (O::(S (S O))::(S (S (S (S O))))::nil)
filt1: list nat
filt1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

||| test expecting true
sub1: bool
sub1 = subset_elements (true::false::nil) (false::true::nil)

||| test expecting true
sub2: bool
sub2 = subset_elements (false::true::nil) (true::false::nil)

||| test expecting false
sub3: bool
sub3 = subset_elements (false::true::nil) (false::nil)

||| test expecting true
sub4: bool
sub4 = subset_elements (false::nil) (false::true::nil)

||| test expecing true
same_elements1: bool
same_elements1 = same_elements (true::false::nil) (false::true::nil)

||| test expecting false
same_elements2: bool
same_elements2 = same_elements (false::true::nil) (false::nil)

||| test expecting true
eqlList1: bool
eqlList1 = eql (true::false::nil) (true::false::nil)

||| test expecting false
eqlList2: bool
eqlList2 = eql (true::false::nil) (false::true::nil)

||| test expecting [True, False, False, True]
listStr1: String
listStr1 = toString (true::false::false::true::nil)
