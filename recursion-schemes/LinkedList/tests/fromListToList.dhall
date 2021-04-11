let fromList = ../fromList.dhall

let toList = ../toList.dhall

let roundTrip = λ(a : Type) → λ(l : List a) → toList a (fromList a l)

let l1 = [] : List Natural

let l2 = [ 1 ]

let l3 = [ 1, 2, 3 ]

let l4 = [ "foo", "bar" ]

let ex1 = assert : roundTrip Natural l1 ≡ l1

let ex2 = assert : roundTrip Natural l2 ≡ l2

let ex3 = assert : roundTrip Natural l3 ≡ l3

let ex4 = assert : roundTrip Text l4 ≡ l4

in  {}
