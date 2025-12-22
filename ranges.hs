myTake = take 3 [1..]

myCicle = take 10 (cycle [1,2,3])

myOdds = [x | x <- [1..], odd x]

myOdds2 = [1,3..]

takeOdds = take 5 myOdds
takeOdds2 = take 5 myOdds2

myLenght :: String -> Integer
myLenght xs = sum [1 | _ <- xs]
