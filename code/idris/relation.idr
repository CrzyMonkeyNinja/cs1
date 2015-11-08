module relation

import list
import bool

query: (value -> result -> result) -> result -> (tuple -> value) -> (tuple -> bool) -> (list tuple) -> result
query reduce id project select relation = list.foldr reduce id (map project (filter select relation))

query2: (list tuple) -> (tuple -> bool) -> (tuple -> value) -> (value -> result -> result) -> result -> result
query2 relation select project reduce id = list.foldr reduce id (map project (filter select relation))
