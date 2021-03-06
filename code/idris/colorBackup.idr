module colors

import pair

import bool

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

mixink: pair color color -> color
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta cyan) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
