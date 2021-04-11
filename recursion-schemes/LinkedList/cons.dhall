let ListF = ./ListF/Type.dhall

let LinkedList = ./Type.dhall

let cons
    : ∀(h : Type) → h → LinkedList h → LinkedList h
    = λ(h : Type) →
      λ(head : h) →
      λ(tail : LinkedList h) →
      λ(t : Type) →
      λ(f : ListF h t → t) →
        f ((ListF h t).Cons { head, tail = tail t f })

in  cons
