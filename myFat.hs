myFat x = if x == 0 then 1 else x * myFat (x-1)

myIntFat :: Int -> Int
myIntFat = myFat
