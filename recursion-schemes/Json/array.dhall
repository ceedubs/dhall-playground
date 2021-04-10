let Json = ./Type.dhall

let JsonF = ./JsonF/Type.dhall

let List/map = (../../Prelude.dhall).List.map

let array
    : List Json → Json
    = λ(l : List Json) →
      λ(a : Type) →
      λ(f : JsonF a → a) →
        let mapped = List/map Json a (λ(j : Json) → j a f) l

        in  f ((JsonF a).JArray mapped)

in  array
