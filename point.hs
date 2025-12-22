data Point = Point {x :: Int, y :: Int}
  deriving (Show)

-- Constructing:
p1 = Point {x = 1, y = 2}
p2 = Point 2 3

-- x and y are actually functions that receives a Point:
showX = x p1
showY = y p2

-- Functions:
move :: Int -> Int -> Point -> Point
move dx dy p = p {x = x p + dx, y = y p + dy}

-- Use Case:
p1' = move 1 1 p1
p1'' = move 4 0 p1'
