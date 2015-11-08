module unit

import bool
import eq
import Serialize

data unit = mkUnit

unit_id : unit -> unit
unit_id mkUnit = mkUnit

unit_eql : unit -> unit -> bool
unit_eql _ _ = true

instance eq unit where
  eql u1 u2 = unit_eql u1 u2

instance Serialize unit where
  toString u = "()"
