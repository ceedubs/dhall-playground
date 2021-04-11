let nil = ../nil.dhall

let map = ../map.dhall

let l = nil Natural

let mapped = map Natural Natural (λ(n : Natural) → n + 1) l

in  assert : mapped ≡ nil Natural
