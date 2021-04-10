let JsonF = ./JsonF/Type.dhall

let bool
    : Bool → ./Type.dhall
    = λ(b : Bool) → λ(a : Type) → λ(f : JsonF a → a) → f ((JsonF a).JBool b)

in  bool
