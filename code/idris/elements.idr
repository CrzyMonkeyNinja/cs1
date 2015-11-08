module elements

import list
import option
import bool

data State = solid | liquid | gas | unknown

||| A record of this type represents an element, its atomic
||| mass * 100, its state of matter at room temperature
||| and a bool indicating metalicity.
record Element where
    constructor MkElement
    name : String
    number : Nat
    mass : Nat
    state : State
    metalicity : bool

H: Element
H = MkElement "Hydrogen" 1 101 gas false

He: Element
He = MkElement "Helium" 2 400 gas false

Li: Element
Li = MkElement "Lithium" 3 694 solid true

Be: Element
Be = MkElement "Beryllium" 4 901 solid true

B: Element
B = MkElement "Boron" 5 108 solid true

C: Element
C = MkElement "Carbon" 6 120 solid false

N: Element
N = MkElement "Nitrogen" 7 140 gas false

O: Element
O = MkElement "Oxygen" 8 160 gas false

F: Element
F = MkElement "Fluorine" 9 190 gas false

Ne: Element
Ne = MkElement "Neon" 10 201 gas false

setName: Element -> String -> Element
setName p Na = record { name = Na } p

setNum: Element -> Nat -> Element
setNum p Nm = record { number = Nm } p

setMass: Element -> Nat -> Element
setMass p M = record { mass = M } p

setState: Element -> State -> Element
setState p S = record { state = S } p

setMetalicity: Element -> bool -> Element
setMetalicity p Me = record { metalicity = Me } p

isSolid: State -> bool
isSolid solid = true
isSolid _ = false

--table: list Element
--table = H::He::Li::Be::B::C::N::O::F::Ne::nil
