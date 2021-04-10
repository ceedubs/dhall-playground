let ExprF = ./Type.dhall

in  λ(e : ExprF Natural) →
      merge
        { Num = λ(n : Natural) → n
        , Add = λ(x : { left : Natural, right : Natural }) → x.left + x.right
        }
        e
