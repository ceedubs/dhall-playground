let Expr = ./Type.dhall

let ExprF = ./ExprF/Type.dhall

let add
    : Expr → Expr → Expr
    = λ(l : Expr) →
      λ(r : Expr) →
      λ(a : Type) →
      λ(f : ExprF a → a) →
        f ((ExprF a).Add { left = l a f, right = r a f })

in  add
