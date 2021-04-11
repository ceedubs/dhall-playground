let fromList = ../fromList.dhall

let cons = ../cons.dhall

let nil = ../nil.dhall

let l = [ 1, 2, 3 ]

let ll = fromList Natural l

let consN = cons Natural

let expected = consN 1 (consN 2 (consN 3 (nil Natural)))

in  assert : ll ≡ expected
