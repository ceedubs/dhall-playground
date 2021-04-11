let concatN = ../concat.dhall Natural

let fromListN = ../fromList.dhall Natural

let nilN = ../nil.dhall Natural

let oneToThree = fromListN [ 1, 2, 3 ]

let fourToSix = fromListN [ 4, 5, 6 ]

let example0 = assert : concatN nilN nilN ≡ nilN

let example1 = assert : concatN nilN oneToThree ≡ oneToThree

let example2 = assert : concatN oneToThree nilN ≡ oneToThree

let example3 =
      assert : concatN oneToThree fourToSix ≡ fromListN [ 1, 2, 3, 4, 5, 6 ]

in  {}
