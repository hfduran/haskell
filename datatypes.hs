data Shape
  = Circle Double
  | Rectangle Double Double

myArea :: Shape -> Double
myArea (Circle r) = pi*r*r
myArea (Rectangle a b) = a * b

myRec :: Shape
myRec = Rectangle 2 4

testArea :: Double
testArea = myArea myRec
