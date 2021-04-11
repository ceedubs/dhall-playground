let nil = ../nil.dhall

let fromList = ../fromList.dhall

let flatMapN = ../flatMap.dhall Natural Text

let withSuccessors =
      λ(n : Natural) →
        fromList
          Text
          [ Natural/show n, Natural/show (n + 1), Natural/show (n + 2) ]

let example0 = assert : flatMapN withSuccessors (nil Natural) ≡ nil Text

let example1 =
        assert
      :   flatMapN withSuccessors (fromList Natural [ 0, 1, 2 ])
        ≡ fromList Text [ "0", "1", "2", "1", "2", "3", "2", "3", "4" ]

in  {}
