let LinkedList = ./Type.dhall

let fold = ./fold.dhall

let nil = ./nil.dhall

let concat = ./concat.dhall

let flatMap
    : ∀(a : Type) →
      ∀(b : Type) →
      (a → LinkedList b) →
      LinkedList a →
        LinkedList b
    = λ(a : Type) →
      λ(b : Type) →
      λ(f : a → LinkedList b) →
      λ(la : LinkedList a) →
        fold
          (LinkedList b)
          a
          (nil b)
          (λ(x : a) → λ(acc : LinkedList b) → concat b (f x) acc)
          la

in  flatMap
