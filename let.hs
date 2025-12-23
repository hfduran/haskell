-- Let can be used to declare function (such as where)

squareList = let square x = x * x in [square 1, square 2, square 3]

greatSquareList = let square x = x * x in [square x | x <- [1 .. 10]]

-- let inside list comprehension: no need to "in" clause, it's already in the list compr.
greatSquareList2 = [square x | x <- [1 .. 10], let square x = x * x]

-- or:
greatSquareList3 = [square | x <- [1 .. 10], let square = x * x]

limitedSquareList = [square | x <- [1 .. 10], let square = x * x, square < 50]
