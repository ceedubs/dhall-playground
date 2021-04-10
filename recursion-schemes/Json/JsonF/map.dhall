let JsonF = ./Type.dhall

let Functor = ../../../Functor/Type.dhall

let KeyValue = ../KeyValue.dhall

let Prelude = ../../../Prelude.dhall

let List/map = Prelude.List.map

let map
    : Functor JsonF
    = λ(a : Type) →
      λ(b : Type) →
      λ(f : a → b) →
      λ(ja : JsonF a) →
        let Jb = JsonF b

        in  merge
              { JNull = Jb.JNull
              , JBool = λ(b : Bool) → Jb.JBool b
              , JDouble = λ(d : Double) → Jb.JDouble d
              , JInteger = λ(d : Integer) → Jb.JInteger d
              , JString = λ(s : Text) → Jb.JString s
              , JArray = λ(la : List a) → Jb.JArray (List/map a b f la)
              , JObject =
                  λ(la : List (KeyValue a)) →
                    let mapValue =
                          λ(kva : KeyValue a) →
                            { key = kva.key, value = f kva.value }

                    in  Jb.JObject
                          (List/map (KeyValue a) (KeyValue b) mapValue la)
              }
              ja

in  map
