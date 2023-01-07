-- list comprehension
myconcat xss = [x | xs <- xss, x <- xs] --dependent generators

factors n = [x | x <- [1..n], mod n x == 0]
prime n = factors n == [1,n]
primes n = [x | x <- [2..n], prime x]