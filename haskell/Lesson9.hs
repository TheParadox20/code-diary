module Lesson9 where
    import Prelude hiding (Eq,(==))
    --creating type classes and Instances
    {-
    In haskell, both values and functions can be overloaded
    Creating a type class:
        - Create a type class stating some behaviours
        - Make a type an instant of that type class with the implementation of those behaviors for that specific type
    -}
    class Eq a where --class <name> <typeVariable> where
        {-
        name -> how the class will be called
        typeVariable ->any type that will be made an instance of the typeClass
        behaviours can either be functions or values
        definitions are done in instances
        -}
        (==),(!=) :: a -> a -> Bool--behaviour1
        x != y = not (x == y)
        x == y = not (x != y)
    instance Eq PaymentMethod where
        -- implementation of ==
        Card == Card = True
        Cash == Card = True
        CC == CC = True
        _ == _ = False
        
        -- implementation of !=
        -- Card != Card = False
        -- Cash != Cash = False
        -- CC != CC = False
        -- _ != _ = True
    --instance for parameterized type
    instance (Eq a) => Eq (Box a) where
        Has x == Has y = x==y
        Empty == Empty = True
        _ == _ = False
    
    
    data PaymentMethod = Cash | Card | CC
    type User = (String, PaymentMethod)

    data Box a = Empty | Has a deriving (Show)
    data Present t a = EmptyPresent t | PresentFor t a deriving (Show)

    class Container c where
        isEmpty  :: c a -> Bool -- ?? why must a be present
        contains :: (Eq a)=>c a -> a -> Bool
        replace  :: c a -> b -> c b
    instance Container Box where
        isEmpty Empty = True
        isEmpty _     = False

        contains (Has x) y = x == y
        contains Empty _ = False

        replace _ = Has 

