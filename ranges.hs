myTake = take 3 [1..]

myCicle = take 10 (cycle [1,2,3])

myOdds = [x | x <- [1..], odd x]

takeOdds = take 5 myOdds
