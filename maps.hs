demo1 :: [Integer]
demo1 = map (+ 3) [1, 2, 3, 4]

mySum x y = x + y

demo2 :: [Integer]
demo2 = map (mySum 1) [1, 2, 3, 4]

-- the very same as...
demo3 :: [Integer]
demo3 = [mySum 1 x | x <- [1, 2, 3, 4]]

demo4 :: [Integer]
demo4 = map (\x -> x + 1) [1, 2, 3, 4]
