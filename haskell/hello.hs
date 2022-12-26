double x = x+x -- <functionName> <arguments> = <"body">
quadruple x = double (double x)
factorial n = product [1..n]
average ns = sum ns `div` length ns

n = a `div` length xs
    where
        a=10
        xs=[1,2,3,4,5]

myLast xs = xs !! (length xs - 1) -- selects last element from list
mySecondLast xs = head (reverse xs)

myInit xs = reverse (tail (reverse xs)) -- removes last element from list
mySecondInit xs = take (length xs -1) xs