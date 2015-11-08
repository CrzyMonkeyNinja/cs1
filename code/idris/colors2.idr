module colors

import pair

data primary =
  red | blue | yellow

data mixed =
  violet | green | orange | deepRed | deepBlue | deepYellow

mix: pair primary primary -> mixed
mix (mkPair red blue) = violet
mix (mkPair red yellow) = orange
mix (mkPair blue yellow) = green
mix (mkPair blue red) = violet
mix (mkPair yellow red) = orange
mix (mkPair yellow blue) = green
mix (mkPair red red) = deepRed
mix (mkPair blue blue) = deepBlue
mix (mkPair yellow yellow) = deepYellow
