module Lesson8 where
    --more on data types
    {-
    Parameterizing Types

    A value constructor takes values as parameters and produces a value
    A type constructor takes types as parameters annd produces a type

    Parametric type synonym
    type <Name> <x> = (x,....)
    -}

    type Entity x = (x, Address) --entity is now a constructor, not just a type
    type Address = String

    bob = ("","0xf") :: Entity String
    sam = (True,"0xf") :: Entity Bool
    jos = ("0xf","") :: Entity Address

    {-
    Parameterizing data types

    -}
    data Box a = Empty | Has a deriving (Show)
    box1 = Has "Cat"
    box2 = Empty
    box3 = (20::Int)

    --Pattern matching to extract variable
    addN :: Num a=>a -> Box a -> Box a
    addN _ Empty = Empty
    addN n (Has a) = Has (n+a)

    extract :: Box a -> a
    extract (Has x) = x

    --Parameterize record syntax
    data Shape a =
        Circle {
            position :: Int,
            radius :: Int,
            color :: a
        }
        | Rectangle {
            position :: Int,
            height :: Int,
            width :: Int,
            color :: a
        }
    circle :: Shape String
    circle = Circle{color = "red",position = 1,radius=3}
    circle2 :: Shape (Integer, Integer, Integer)
    circle2 = Circle{color = (12,34,21),position = 1,radius=3}


    --recursive data types
    data Tweet = Tweet{
        content :: String,
        likes :: Int,
        comments :: [Tweet]
    } deriving (Show)

    tweet::Tweet
    tweet = Tweet "Fck society" 5 [
        Tweet "" 1 [],
        Tweet "" 0 [],
        Tweet "" 3 [
            Tweet "" 0 []
        ]
     ]
    engaement :: Tweet -> Int
    engaement Tweet {likes = l, comments = c} = l + length c + sum (map engaement c)

    data Sequence a = EmptyS | Node' a (Sequence a) deriving (Show)
    elemSeq :: (Eq a)=>a -> Sequence a -> Bool
    elemSeq _ EmptyS = False
    elemSeq x (Node' y ys) = x==y || elemSeq x ys

    {-
    infix data constructors
    Must start with a :
    -}
    infixr 5 :->
    data Sequence' a = EmptyS' |  a :-> (Sequence' a) deriving (Show)

    sequence4 :: Sequence' Integer
    sequence4 = 1 :-> 2 :-> 3 :-> EmptyS'

    elemSeq' :: (Eq a)=>a->Sequence' a->Bool
    elemSeq' _ EmptyS' = False
    elemSeq' x (y :-> ys) = x==y || elemSeq' x ys

    --Binary tree
    data Tree a = Leaf | Node a (Tree a) (Tree a) deriving (Show)

    pine::Tree Integer
    pine = Node 8 (Node 4 Leaf Leaf) (Node 9 Leaf Leaf)

    inTree :: (Eq a)=>a->Tree a -> Bool
    inTree _ Leaf = False
    inTree x (Node a l r) = x==a || x `inTree` l || x `inTree` r

    elemTree :: (Ord a) => a -> Tree a -> Bool
    elemTree _ Leaf = False
    elemTree x (Node a l r)
        | x==a = True
        | x>a = x `elemTree` r
        | x<a = x `elemTree` l
        | otherwise = False
    
    --newType
    {-
    Types created with newType need to have exactly one constructor with only 1 parameter/field
    -}
    newtype Colour a = Choice a
