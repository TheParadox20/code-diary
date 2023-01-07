--conditional expresions
myabs::Int->Int
myabs n = if n>=0 then n else - n
otherabs n | n>=0 =n | otherwise = n
--pattern matching

-- list patterns
second :: [a] -> a --get second element from list
second (a:b:_) = b

--lambda expressions
myoods n = map (\x -> x*2 + 1) [0..n-1]

--operator sections
os x y = (+) x y

--exercise create safe tail function
safetail_if ns = if null ns then [] else tail ns
safetail_guarded ns | null ns = [] | otherwise = tail ns
safetail_pattern [] = []
safetail_pattern xs = tail xs
