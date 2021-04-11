let fromList = ../fromList.dhall

let nil = ../nil.dhall

let ll = fromList Natural ([] : List Natural)

let expected = nil Natural

in  assert : ll ≡ expected
