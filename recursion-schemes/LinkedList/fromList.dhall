let build = ./build.dhall

let Prelude = ../../Prelude.dhall

let listFold = Prelude.List.fold

in  λ(a : Type) →
    λ(l : List a) →
      build
        a
        ( λ(list : Type) →
          λ(nil : list) →
          λ(cons : a → list → list) →
            listFold a l list cons nil
        )
