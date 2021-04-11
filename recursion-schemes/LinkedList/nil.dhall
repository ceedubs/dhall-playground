let ListF = ./ListF/Type.dhall

let LinkedList = ./Type.dhall

let nil
    : ∀(h : Type) → LinkedList h
    = λ(h : Type) → λ(t : Type) → λ(f : ListF h t → t) → f (ListF h t).Nil

in  nil
