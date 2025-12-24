multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoWithNine :: (Num a) => a -> a -> a
multTwoWithNine = multThree 9

-- usage example: multTwoWithNine 2 3

-- One thing that gets me is that the function parameters, however, have order.
-- We can't create a higher level function out of mocking the last parameter
--
-- well... actually we can, but specifying new variables:
multTwoWithNine' :: (Num a) => a -> a -> a
multTwoWithNine' a b = multThree a b 9

-- or:
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = compare x 100

-- The thing is: if mocking the first parameter, we can ommit the parameters.
-- That's because a function is a sequence of single param functions:
--
this = max 4 5

isTheSameAsThat = (max 4) 5

-- Also with infix functions:
isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A' .. 'Z'])

-- Kinda strange, because without infix, it need to have the param
isUpperAlphanum' :: Char -> Bool
isUpperAlphanum' x = elem x ['A' .. 'Z']

-------------------

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

demo1 = applyTwice (+ 3) 10

demo2 = applyTwice (2 :) []

----------------------

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x : xs) (y : ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f a b = f b a

-- or
flip'' :: (a -> b -> c) -> (b -> a -> c)
flip'' f = g
  where
    g x y = f y x
