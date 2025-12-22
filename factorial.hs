myFat x = if x == 0 then 1 else x * myFat (x - 1)

myFat2 0 = 1
myFat2 x = x * myFat2 (x - 1)

myFat3 x = product [1..x]

myIntFat :: Int -> Int
myIntFat = myFat

myIntegerFat :: Integer -> Integer
myIntegerFat = myFat
