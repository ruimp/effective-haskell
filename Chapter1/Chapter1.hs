module Chapter1 where

makeGreeting = (<>) . (<> " ")

factorial n =
    if n == 1
        then 1
        else n * factorial (n - 1)

counter = 1
string = "0"

fb s num =
    if 0 == rem num 3
        then s <> "\nFizz"
        else
            if 0 == rem num 5
                then s <> "\nBuzz"
                else s <> "\n" <> show num
