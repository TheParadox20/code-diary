module Lesson4 where
    --more on functions
    {--}

    --higer order function
    applyTwice :: (a->a)->a->a
    applyTwice f x = f (f x)

    {-
    FILTER function
     takes a predicate and a list returning a list
    -}
    fruitWithA :: [String]->[String]
    fruitWithA fruits = filter predicate fruits
                        where predicate x = 'a' `elem` x
    {-
    ANY function
    takes a predicate and list returning bool
    -}

    {-
    LAMBDA functions
    is a function definition that doesn't have a name
    i.e. a function that takes 2 arguemnts and multiplies them
    \x y -> x*y
    \<params> -> <body>
    -}
    fruitWithA' :: [String]->[String]
    fruitWithA' fruits = filter (\x->elem 'a' x) fruits

    {-
    Precedence
    can be obtained using the :i command
    infixl <precedenceID>
    * > precedence +

    Associativity 
    left associativity
    right associativity > right side first

    setting associativity & presedence
    infix<l||r> <0..9> <func>

    operators without explicit fixity declaration are infixl 9

    function application (whitespace operator ( )) has the highest left-associative precedence
    -}
    (+++) :: Int->Int->Int
    (+++) x y = x + y
    infixl 4 +++

    -- (++ "ing") "Think" >> same as \x->x ++ ing
    -- ("Anti" ++) "library" >> same as \x->"Anti" ++ x
    -- any (>4) [0..5]
    -- any (\x->x>4) [0..5]

    {-
    Applying and composing functions

    The function application $ operator
    Compared to the ( ) operator, this has the lowest right-associative precedence
    f g h x = ((f g) h) x
    f $ g $ h x = f (g (h x))

    Composing
    The output of a function is used as input to another function
    The (.) operator
    f . g = \x -> f (g x)
    -}
    complicatedF :: [Int] -> Bool
    complicatedF x = any even . filter (>25) . tail . take 10 $ x

    --point-free style
    {-
    Used to discard redundant info
    -}
    fourOrLarger :: Int -> Int
    fourOrLarger x = max 4 x

    fourOrLarger' :: Int->Int
    fourOrLarger' = max 4