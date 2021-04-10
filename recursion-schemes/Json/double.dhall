let JsonF = ./JsonF/Type.dhall

let double
    : Double → ./Type.dhall
    = λ(d : Double) → λ(a : Type) → λ(f : JsonF a → a) → f ((JsonF a).JDouble d)

in  double
