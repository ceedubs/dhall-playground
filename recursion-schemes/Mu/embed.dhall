let Functor/Type = ../../functor/Type.dhall

let Mu/Type = ./Type.dhall

let embed
    : ∀(f : Type → Type) → Functor/Type f → f (Mu/Type f) → Mu/Type f
    = λ(f : Type → Type) →
      λ(functorF : Functor/Type f) →
      λ(x : f (Mu/Type f)) →
      λ(a : Type) →
      λ(g : f a → a) →
        g (functorF (Mu/Type f) a (λ(ma : Mu/Type f) → ma a g) x)

in  embed
