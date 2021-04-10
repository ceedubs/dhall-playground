let JsonF = ./JsonF/Type.dhall

let string
    : Text → ./Type.dhall
    = λ(s : Text) → λ(a : Type) → λ(f : JsonF a → a) → f ((JsonF a).JString s)

in  string
