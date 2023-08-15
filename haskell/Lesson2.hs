module Lesson2 where
    --conditional & Helper constructions

    -- if <condition> then <Expression1> else <Expre>
    checkLocalHost :: [Char] -> String
    checkLocalHost ip =
        if "127.0.0.1" == ip
            then "It's Local"
            else "Not local"
    
    --Guards
    {-
    <func> <arg>
        | <Conition1> = <Result1>
        | <Conition2> = <Result2>
        | <Conition3> = <Result3>
        | True = Default -- use otherwise instead of True
    NOTE :: no equal sign after arguments
         :: if no default is provided an Non-exhaustive patterns exception may be thrown
    -}
    specialBirthday :: Int -> [Char]
    specialBirthday age
        | age == 1 = "First birthday"
        | age == 18 = "Adult"
        | age == 60 = "Death eater"
        | otherwise = "Nothing special"
    
    -- LET & WHERE
    {-
    let and where are used to store the intermidiary computations and bind local variables

    <func> <arg> =
        let <BIND_1>
            <BIND_2>
        in  <EXPR that uses BIND_1 and/or BIND_2>
    <func> <arg> =  <EXPR that uses BIND_1 and/or BIND_2>
            where <BIND_1>
                  <BIND_2>
    
    where is used in conjunction with guards

    <func> <args>
        | ...
        | ...
        | otherwise ...
        where
            <var> = ....
    in this case var can be accessed inside the guards

    let expressions can be accessed globaly
    expressions can be separeted by ;

    let x=8;y=9;z=10 --global
    let x=8;y=9;z=10 in x*y*z --only available in in
    -}

    hotterInKelvin :: Double->Double->Double --takes temp in cel and Far
    hotterInKelvin c f =
        let fToC t = (t-32)*5/9
            cToK t = t + 273.16
            fToK t = cToK (fToC t)
        in  if c > fToC f then cToK c else fToK f

    hotterInKelvin' :: Double->Double->Double
    hotterInKelvin' c f = if c > fToC f then cToK c else fToK f
                    where
                        fToC t = (t-32)*5/9
                        cToK t = t + 273.16
                        fToK t = cToK (fToC t)