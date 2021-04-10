let Json = ../Type.dhall

let render = ../render.dhall

let null = ../null.dhall

let bool = ../bool.dhall

let double = ../double.dhall

let integer = ../integer.dhall

let string = ../string.dhall

let array = ../array.dhall

let object = ../object.dhall

let o =
      object
        [ { key = "null", value = null }
        , { key = "bool", value = bool True }
        , { key = "string", value = string "hello" }
        , { key = "empty-array", value = array ([] : List Json) }
        , { key = "array"
          , value = array [ integer -1, double 2.0, string "three" ]
          }
        ]

let expected = ./render-expectation.json as Text

in  assert : render o ++ "\n" ≡ expected
