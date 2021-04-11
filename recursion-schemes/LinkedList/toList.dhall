let LinkedList = ./Type.dhall

let fold = ./fold.dhall

let build = (../../Prelude.dhall).List.build

in  λ(a : Type) →
    λ(l : LinkedList a) →
      build
        a
        ( λ(list : Type) →
          λ(cons : a → list → list) →
          λ(nil : list) →
            fold list a nil cons l
        )
