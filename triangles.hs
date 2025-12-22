import Data.List

triples :: [(Int, Int, Int)]
triples =
  [ (a, b, c)
    | a <- [1 .. 10],
      b <- [1 .. 10],
      c <- [1 .. 10],
      triangle a b c
  ]

triangle :: Int -> Int -> Int -> Bool
triangle a b c =
  let m = maximum [a, b, c]
   in a + b + c > 2 * m

rightTriangle :: Int -> Int -> Int -> Bool
rightTriangle a b c =
  triangle a b c
    && let [x, y, z] = sort [a, b, c]
        in (x ^ 2 + y ^ 2 == z ^ 2)

listTriangles :: [(Int, Int, Int)]
listTriangles =
  filter (\(a,b,c) -> triangle a b c) triples

listRightTriangles :: [(Int, Int, Int)]
listRightTriangles =
  filter (\(a,b,c) -> rightTriangle a b c) triples
