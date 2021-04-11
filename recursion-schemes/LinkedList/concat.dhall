let LinkedList = ./Type.dhall

let fold = ./fold.dhall

let cons = ./cons.dhall

let concat
    : ∀(a : Type) → LinkedList a → LinkedList a → LinkedList a
    = λ(a : Type) →
      λ(l1 : LinkedList a) →
      λ(l2 : LinkedList a) →
        fold (LinkedList a) a l2 (cons a) l1

in  concat
