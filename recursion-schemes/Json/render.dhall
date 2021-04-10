let Json = ./Type.dhall

let render
    : Json → Text
    = λ(j : Json) → j Text ./JsonF/render.dhall

in  render
