let KeyValue = ./KeyValue.dhall

let Json = ./Type.dhall

let JsonF = ./JsonF/Type.dhall

let List/map = (../../Prelude.dhall).List.map

let object
    : List (KeyValue Json) → Json
    = λ(l : List (KeyValue Json)) →
      λ(a : Type) →
      λ(f : JsonF a → a) →
        let mapValue =
              λ(kv : KeyValue Json) → { key = kv.key, value = kv.value a f }

        let mapped = List/map (KeyValue Json) (KeyValue a) mapValue l

        in  f ((JsonF a).JObject mapped)

in  object
