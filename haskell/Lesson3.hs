module Lesson3 where
    --Pattern matching and CAse expressions
    {-
    Pattern matching is the act of matching data against a pattern, optionally binding variables to successful matches
    Pattern matching in functions, lists, and tuples

    In functions, it is achieved by defining the function multiple times
    -}

    specialBirthday :: Int -> [Char]
    specialBirthday 1 = ""
    specialBirthday 18 = ""
    specialBirthday 60 = ""
    --catch-all patterns
    specialBirthday age = "What !! " ++ show age

    --LISTS
    {-
    <func> (x:rest) = ...
    -}

    firstAndThird :: [a]->(a,a)
    firstAndThird (x:_:y:_) = (x,y)

    initials :: String->String->String --initials "Samson" "Mongaer" == "S.M." 
    initials (f:_) (l:_) = [f,'.',l,'.']
    initials _ _ = "Not a real name"

    --Case Expressions
    {-
    case <Exp< of <PAttern1> -> <Result1>
                  <PAttern2> -> <Result2>
                  <PAttern3> -> <Result3>
    -}
    checkForZeroes :: (Int,Int,Int) -> String
    checkForZeroes tuple = case tuple of
        (0,0,0)->"All zeros"
        (0,_,_)->"At first"
        (_,0,_)->"At second"
        (_,_,0)->"At third"
        _ ->"We're good"
    
    checkForZeroes' :: (Int,Int,Int) -> String
    checkForZeroes' tuple = "The tuple " ++ show tuple ++ " has " ++
        case tuple of
        (0,0,0)->"All zeros"
        (0,_,_)->"At first"
        (_,0,_)->"At second"
        (_,_,0)->"At third"
        _ ->"No zeros"