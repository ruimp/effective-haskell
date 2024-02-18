module Exercises where

factorial num =
  if num == 1
    then 1
    else num * factorial (num - 1)

fibonacci num =
  if num == 0 || num == 1
    then num
    else fibonacci (num - 1) + fibonacci (num - 2)

myCurry fun = (\a b -> fun (a, b))

myUncurry fun = (\(a, b) -> fun a b)
