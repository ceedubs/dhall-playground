let ListF = ./Type.dhall

in  λ(z : Type) →
    λ(h : Type) →
    λ(t : Type) →
    λ(nil : z) →
    λ(cons : h → t → z) →
    λ(l : ListF h t) →
      merge
        { Nil = nil, Cons = λ(x : { head : h, tail : t }) → cons x.head x.tail }
        l
