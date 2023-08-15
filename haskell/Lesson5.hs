module Lesson5 where
    foldr' :: (a->b->b) -> b -> [a] -> b
    foldr' _ v [] = v
    foldr' f v (x:xs) = f x $ foldr' f v xs
    --foldr' (+) 0 [0..10]

    length' :: [a]->Int
    length'  = foldr' (\_ n->n+1) 0

    myFoldl :: (a->b->a) -> a -> [b] -> a
    myFoldl _ v [] = v
    myFoldl f v (x:xs) = myFoldl f (f v x) xs

    reverse' :: [a]->[a]
    reverse' = myFoldl (\x y -> y:x) []