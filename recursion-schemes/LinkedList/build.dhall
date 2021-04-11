let LinkedList = ./Type.dhall

let nil = ./nil.dhall

let cons = ./cons.dhall

let build
    : ∀(a : Type) →
      (∀(list : Type) → ∀(nil : list) → ∀(cons : a → list → list) → list) →
        LinkedList a
    = λ(a : Type) →
      λ(f : ∀(list : Type) → list → (a → list → list) → list) →
        f (LinkedList a) (nil a) (cons a)

in  build
