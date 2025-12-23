length' :: [a] -> Integer
length' [] = 0
length' (_:rest) = 1 + length' rest

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

tell :: (Show a) => [a] -> String
tell [] = "Nothing to show..."
tell (x:[]) = "List has a single element! Which is: " ++ show x
tell (x:y:[]) = "List has two elements! They are: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "Wow! List is big! Here are the first two elements: " ++ show x ++ " and " ++ show y

-- or...
tell' :: (Show a) => [a] -> String
tell' [] = "Nothing to show..."
tell' [x] = "List has a single element! Which is: " ++ show x
tell' [x, y] = "List has two elements! They are: " ++ show x ++ " and " ++ show y
tell' (x:y:_) = "Wow! List is big! Here are the first two elements: " ++ show x ++ " and " ++ show y

firstLetter :: String -> String
firstLetter "" = "No string!"
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]
