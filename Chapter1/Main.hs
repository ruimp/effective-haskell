module Main where

makeGreeting salutation person =
    let messageWithTrailingSpace = salutation <> " "
     in messageWithTrailingSpace <> person

extendedGreeting person =
    helloAndGoodbye "Hello" "Goodbye"
  where
    helloAndGoodbye hello goodbye =
        joinWithNewLines hello' goodbye'
      where
        hello' = makeGreeting hello person
        goodbye' = makeGreeting goodbye person
    joinWithNewLines a b = a <> "\n" <> b

letWhereGreeting name place =
    let
        salutation = "Hello " <> name
        meetingInfo = location "Tuesday"
     in
        salutation <> " " <> meetingInfo
  where
    location day = "we met at " <> place <> " on a " <> day

printSmallNumber num =
    if num < 10
        then print num
        else print "the number is too big!"

main = return ()
