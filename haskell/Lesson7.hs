module Lesson7 where
    --creating non-parameterized types

    {-
    Type synonyms
    Are not new types
    Must start with a capital
    Used to enhance code readablility
    -}
    type Me = String
    type Age = Int
    type Person' = (Me,Age)
    
    bob :: Person'
    bob = ("Samson",18)
    
    {-
    New types with data
    
    data <typeName> = <value_constructors> deriving (<typeClasses,>)

    value constructors specify the values a type can have

    Type name and value constructors must start in uppercase
    -}

    data PaymentMethod = Cash | Card | Crypto deriving (Show,Eq)
    type Name = String
    type Address = (String,Int)
    type Person = (Name, Address, PaymentMethod)
    sam :: Person
    sam = ("Samson",("Naks",1001),Cash)

    howItPays :: Person -> String
    howItPays (_,_,x)
        | x==Cash = ""
        | x==Card = ""
        | x==Crypto = ""
    {-
    Value Parameters
    data <typeName> = <value_constructor> <types> | ... deriving (<typeClasses,>)
    -}
    data Shape = Circle Float | Rectangle Float Float
    moon :: Shape
    moon = Circle $ 1.5*10^6

    room :: Shape
    room = Rectangle 4 5

    area :: Shape -> Float
    area (Circle r) = pi * r^2
    area (Rectangle l w) = l*w

    {-
    Record Syntax

    one can extract a value from the data type by
    <fieldName> <var>
    -}
    data Employee = Employee {name::String, experience::Float} deriving (Show)
    richard :: Employee
    richard = Employee{name = "Richard",experience = 7}
    ronald :: Employee
    ronald = Employee "Ronald" 20
    sabella :: Employee
    sabella = ronald {name="Sabella"}

    team :: [Employee]
    team = [richard,ronald,sabella]

    combinedExp :: [Employee] -> Float
    combinedExp = foldr (\e acc -> experience e + acc ) 0

    data Shape' =
        Circle' {
            position :: (Float,Float),
            radius :: Float
        }
        | Rectangle' {
            position :: (Float,Float),
            height :: Float,
            width :: Float
        } deriving (Show)
    
    --PAttern matching in record syntax
    {--}
    area' :: Shape'->Float
    area' Circle' {radius=r} = pi*r*r
    area' Rectangle' {width=w,height=l} = l*w