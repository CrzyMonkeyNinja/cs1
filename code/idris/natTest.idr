module natTest

import nat
import pair
import bool
import eq
import Serialize

||| example expecting (S (S (S O)))
ad1: nat
ad1 = add th O

||| example expecting (S (S (S (S O))))
ad2: nat
ad2 = add tw tw

||| example expecting (S (S (S (S (S O)))))
ad3: nat
ad3 = add th tw

||| example expecting (S (S O))
mp1: nat
mp1 = mult tw (S O)

||| example expecting (S (S (S (S O))))
mp2: nat
mp2 = mult tw tw

||| example expecting O
mp3: nat
mp3 = mult te O

||| example expecting (S (S (S (S (S (S O))))))
mp4: nat
mp4 = mult th tw

||| example expecting (S (S (S (S O))))
ex1: nat
ex1 = exp tw tw

||| example expecting (S (S (S (S (S (S (S (S O))))))))
ex2: nat
ex2 = exp tw th

||| example expecting (S (S (S (S (S (S (S (S (S O)))))))))
ex3: nat
ex3 = exp th tw

||| example expecting (S (S (S (S (S O)))))
fct1: nat
fct1 = fact th

||| example expecting (S (S O))
fct2: nat
fct2 = fact tw

||| example expecting true
le1: bool
le1 = le O (S O)

||| example expecting false
le2: bool
le2 = le tw O

||| example expecting true
le3: bool
le3 = le th th

||| example expecting true
le4: bool
le4 = le th fi

||| example expecting false
le5: bool
le5 = le fi th

||| example expecting true
eq1: bool
eq1 = eql fi fi

||| example expecting false
eq2: bool
eq2 = eql fi si

||| example expecting false
eq3: bool
eq3 = eql si fi

||| example expecting true
gt1: bool
gt1 = gt fi fo

||| example expecting false
gt2: bool
gt2 = gt fo fi

||| example expecting false
gt3: bool
gt3 = gt fi fi

||| example expecting true
ge1: bool
ge1 = ge fi fi

||| example expecting true
ge2: bool
ge2 = ge fi fo

||| example expecting false
ge3: bool
ge3 = ge fo fi

||| example expecting true
lt1: bool
lt1 = lt fo fi

||| example expecting false
lt2: bool
lt2 = lt fo fo

||| example expecting false
lt3: bool
lt3 = lt fi fo

||| example expecting (S (S (S (S (S (S (S (S O))))))))
fib1: nat
fib1 = fib si

||| example expecting (S (S (S (S (S O)))))
fib2: nat
fib2 = fib fi

||| example expecting (S (S (S O)))
fib3: nat
fib3 = fib th

||| example expecting sssZ
str1: String
str1 = toString (S (S (S O)))

||| example expecting ssZ
str2: String
str2 = toString (S (S O))
