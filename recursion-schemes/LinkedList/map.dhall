let LinkedList = ./Type.dhall

let fold = ./fold.dhall

let nil = ./nil.dhall

let cons = ./cons.dhall

in  λ(a : Type) →
    λ(b : Type) →
    λ(f : a → b) →
    λ(l : LinkedList a) →
      fold
        (LinkedList b)
        a
        (nil b)
        (λ(h : a) → λ(t : LinkedList b) → cons b (f h) t)
        l
