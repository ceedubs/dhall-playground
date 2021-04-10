let JsonF = ./Type.dhall

let Prelude = ../../../Prelude.dhall

let KeyValue = ../KeyValue.dhall

let concatSep = Prelude.Text.concatSep

let concatMapSep = Prelude.Text.concatMapSep

let escape
    : Text → Text
    = λ(s : Text) → s

let renderKeyValue = λ(kv : KeyValue Text) → "\"${escape kv.key}\":${kv.value}"

let render
    : JsonF Text → Text
    = λ(j : JsonF Text) →
        merge
          { JNull = "null"
          , JBool = λ(b : Bool) → if b then "true" else "false"
          , JDouble = λ(d : Double) → Double/show d
          , JInteger = λ(i : Integer) → Integer/show i
          , JString = λ(s : Text) → "\"${escape s}\""
          , JArray = λ(x : List Text) → "[" ++ concatSep "," x ++ "]"
          , JObject =
              λ(l : List (KeyValue Text)) →
                "{" ++ concatMapSep "," (KeyValue Text) renderKeyValue l ++ "}"
          }
          j

in  render
