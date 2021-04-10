let KeyValue = ../KeyValue.dhall

let JsonF
    : Type → Type
    = λ(a : Type) →
        < JNull
        | JBool : Bool
        | JDouble : Double
        | JInteger : Integer
        | JString : Text
        | JArray : List a
        | JObject : List (KeyValue a)
        >

in  JsonF
