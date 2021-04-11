let nil = ../nil.dhall

let fold = ../fold.dhall

let l = nil Natural

let concatenated =
      fold
        Text
        Natural
        "EOF"
        (λ(n : Natural) → λ(s : Text) → Natural/show n ++ s)
        l

in  assert : concatenated ≡ "EOF"
