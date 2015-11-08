module colors

import pair
import bool
import option

%default total

data color = red | green | blue | yellow | cyan | magenta

complement: color -> color
complement red = cyan
complement cyan = red
complement green = magenta
complement magenta = green
complement blue = yellow
complement yellow = blue

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive c = not (additive c)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements _ = false

mixink: pair color color -> option color
mixink (mkPair cyan magenta) = some blue
mixink (mkPair magenta cyan) = some blue
mixink (mkPair magenta yellow) = some red
mixink (mkPair yellow magenta) = some red
mixink (mkPair yellow cyan) = some green
mixink (mkPair cyan yellow) = some green
mixink (mkPair red blue) = some magenta
mixink (mkPair blue red) = some magenta
mixink (mkPair blue green) = some cyan
mixink (mkPair green blue) = some cyan
mixink (mkPair green red) = some yellow
mixink (mkPair red green) = some yellow
mixink _ = none
