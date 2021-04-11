let fromList = ../fromList.dhall

let map = ../map.dhall

let l = fromList Natural [ 1, 2, 3 ]

let mapped = map Natural Natural (λ(n : Natural) → n + 1) l

in  assert : mapped ≡ fromList Natural [ 2, 3, 4 ]
