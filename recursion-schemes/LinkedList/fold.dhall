let LinkedList = ./Type.dhall

let fold
    : ∀(z : Type) → ∀(h : Type) → z → (h → z → z) → LinkedList h → z
    = λ(z : Type) →
      λ(h : Type) →
      λ(zero : z) →
      λ(combine : h → z → z) →
      λ(l : LinkedList h) →
        let foldF = ./ListF/fold.dhall z h z zero combine in l z foldF

in  fold
