module Lesson1 where
    volumeOfACylinder :: Floating a => a -> a -> a
    volumeOfACylinder r h = pi * r^2 * h
    {-
    Infix and prefix
    use () to make an infix operator prefix
    use `` to make a prefix operator infix
    functions defined using only symbols are automatically infix
    (#) 4 5 == 4 `prod` 5 == 4 # 5 == prod 4 5
    -}
    prod :: Int->Int->Int
    prod x y = x * y

    (#) :: Int->Int->Int
    (#) x y = x*y

    {-
    Integer and Int
    Integer is an arbitrary precision type
    Int has a bound range depending on cpu architeture i.e +or- 2^63

    Float and Double
    Float has single precision i.e. 32 bits
    Double has double precision i.e. 64 bits

    Numbers characters and strings can be compared

    Char is used to represent unicode characters

    Lists
    Store vallues of same type
    [<type>]

    Strings
    List of characters
    ['h','e','l','l','o'] == "hello"

    Tuples
    Can store items of different types
    Has fixed size
    (<type1>,<type2>,<type1>,<type3>,)
    -}

    first :: a->a->a
    first a b = a

    -- useful functions with tuples
    {-
    fst (...) returns the first element
    snd (...)
    -}

    --functions with lists

    --use the !! operator to access a specificitem inside a list based on the index

    atIndex :: [a]->Int->a
    atIndex arr x = arr !! x
    --"Hello" `atIndex` 1 == e

    --lists can be defined using the range operator
    {-
    [0..100]
    [0,2..100]
    [100,-2..0]
    [1..]
    -}

    --take returns the first n elements from a list
    --take 5 [1,2..]

    --manually constructing a list
    {-
    Using the cons operator :
    used to prepend elements to a list

    Using the concatenation operator ++
    used to join 2 lists together

    The ++ operator is not efficient
    -}

    --other usefull functions
    {-
    length [...] returns an Int
    null [...] returns a bool
    sum [...]
    x `elem` [...] returns a bool True if an element is inside a list
    head [...] returns the first element
    tail [...] returns a list of all elements from index 1
    -}

    -- usefull functions with strings
    {-
    words "... ... ... ..." returns a list of strings by splitting at spaces
    unwords [...] returns a string
    lines "..." returns an array, separator '\n'
    unlines [...] returns a string
    -}