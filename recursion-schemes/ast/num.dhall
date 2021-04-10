let Expr = ./Type.dhall

let ExprF = ./ExprF/Type.dhall

let num
    : Natural → Expr
    = λ(n : Natural) → λ(a : Type) → λ(f : ExprF a → a) → f ((ExprF a).Num n)

in  num
