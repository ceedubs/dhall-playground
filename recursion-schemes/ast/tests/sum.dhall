let num = ../num.dhall

let add = ../add.dhall

let eval = ../eval.dhall

let expr = add (add (num 1) (num 2)) (add (num 3) (num 4))

let result = eval expr

in  assert : result ≡ 10
