import nat
import pair
import bool
import listNat

l0: listNat
l0 = nil

l1: listNat
l1 = (cons (S O) nil)

l2: listNat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: listNat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

||| test expecting (S (S (S O)))
len1: nat
len1 = (len l3)

||| test expecting (cons (S (S O)) (cons (S O) (cons (S (S (S O))))))
ap1: listNat
ap1 = append (cons (S O) (cons (S (S O)) nil)) (cons (S (S (S O))) nil)

||| test expecting (cons (S O) (cons (S (S O)) (cons (O) (cons (S (S O)) (cons (S (S (S O))) (cons O nil))))))
ap2: listNat
ap2 = append (cons (S O) (cons (S (S O)) (cons (O) nil))) (cons (S (S O)) (cons (S (S (S O))) (cons O nil)))

||| test expecting (cons (S O) nil)
ap3: listNat
ap3 = append (nil) (l1)

||| test expecting (S (S (S O)))
lst1: nat
lst1 = last l3

||| test expecting (S (S (S O)))
indx1: nat
indx1 = index (l3) (tw)

||| test expecting (cons (S O) (cons (S (S O)) nil))
remL1: listNat
remL1 = removeLast l3
