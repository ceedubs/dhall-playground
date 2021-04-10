let ExprF = ./Type.dhall

in  λ(a : Type) →
    λ(b : Type) →
    λ(f : a → b) →
    λ(expra : ExprF a) →
      merge
        { Num = λ(n : Natural) → (ExprF b).Num n
        , Add =
            λ(x : { left : a, right : a }) →
              (ExprF b).Add { left = f x.left, right = f x.right }
        }
        expra
