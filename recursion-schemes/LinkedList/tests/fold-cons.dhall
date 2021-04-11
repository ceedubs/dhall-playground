let fromList = ../fromList.dhall

let fold = ../fold.dhall

let l = fromList Natural [ 1, 2, 3 ]

let concatenated =
      fold
        Text
        Natural
        "EOF"
        (λ(n : Natural) → λ(s : Text) → Natural/show n ++ s)
        l

in  assert : concatenated ≡ "123EOF"
