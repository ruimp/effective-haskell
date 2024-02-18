module FizzBuzz where

fizzBuzzFor number
    | 0 == rem number 15 = "FizzBuzz"
    | 0 == rem number 3 = "Fizz"
    | 0 == rem number 5 = "Buzz"
    | otherwise = show number

naiveFizzBuzz fizzBuzzCount curNum fizzBuzzString =
    if curNum > fizzBuzzCount
        then fizzBuzzString
        else
            let nextFizzBuzzString = fizzBuzzString <> fizzBuzzFor curNum <> " "
                nextNumber = curNum + 1
             in naiveFizzBuzz fizzBuzzCount nextNumber nextFizzBuzzString
