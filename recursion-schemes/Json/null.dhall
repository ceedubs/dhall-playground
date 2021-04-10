let JsonF = ./JsonF/Type.dhall

let null
    : ./Type.dhall
    = λ(a : Type) → λ(f : JsonF a → a) → f (JsonF a).JNull

in  null
