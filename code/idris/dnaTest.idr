module dnaTest

import dna
import list
import pair

||| test expecting T
compBase1: base
compBase1 = complement_base A

||| test expecting A
compBase2: base
compBase2 = complement_base T

||| test expecting G
compBase3: base
compBase3 = complement_base C

||| Test expecting C
compBase4: base
compBase4 = complement_base G

str1: list base
str1 = T::A::C::G::G::C::A::T::nil

str2: list base
str2 = G::G::G::C::T::A::C::nil

compStrand1: list base
compStrand1 = complement_strand str1

dna1: list (pair base base)
dna1 = (mkPair A T)::(mkPair T A)::(mkPair C G)::(mkPair G C)::nil

||| Test epecting A::T::C::G::nil
strand1Test1: list base
strand1Test1 = strand1 dna1

||| Test expecting T::A::G::C::nil
strand2Test1: list base
strand2Test1 = strand2 dna1

||| test expecting (mkPair T A ::mkPair A T ::mkPair C G ::mkPair G C ::mkPair G C :: mkPair C G :: mkPair A T :: mkPair T A :: nil)
completeTest1: list (pair base base)
completeTest1 = complete str1

||| Test expecting 2
countTest1: Nat
countTest1 = countBase A str1

||| Test expecting 3
countTest2: Nat
countTest2 = countBase G str2
