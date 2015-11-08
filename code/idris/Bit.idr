module Bit

-- Data type
data Bit = one | zero

--Functions 
change: Bit -> Bit
change one = zero
change zero = one

Id: Bit -> Bit
Id one = one
Id zero = zero
