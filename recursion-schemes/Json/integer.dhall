let JsonF = ./JsonF/Type.dhall

let integer
    : Integer → ./Type.dhall
    = λ(i : Integer) →
      λ(a : Type) →
      λ(f : JsonF a → a) →
        f ((JsonF a).JInteger i)

in  integer
