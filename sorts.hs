quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) =
  let smallerSorted = quicksort [s | s <- xs, s <= x]
      biggerSorted = quicksort [b | b <- xs, b > x]
   in smallerSorted ++ [x] ++ biggerSorted

mergesort :: (Ord a) => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs =
  let half = length xs `div` 2
   in let firstHalfSorted = mergesort (take half xs)
          secondHalfSorted = mergesort (drop half xs)
       in merge firstHalfSorted secondHalfSorted

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x <= y = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys
