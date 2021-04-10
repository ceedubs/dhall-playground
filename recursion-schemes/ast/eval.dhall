let Expr = ./Type.dhall

let evalF = ./ExprF/eval.dhall

in  λ(e : Expr) → e Natural evalF
