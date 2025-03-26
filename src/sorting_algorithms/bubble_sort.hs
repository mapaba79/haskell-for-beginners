bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort xs = case pass xs of
    (swapped, sorted) -> if swapped then bubbleSort sorted else sorted
  where
    pass :: (Ord a) => [a] -> (Bool, [a])
    pass (x:y:xs)
      | x > y     = let (swapped, rest) = pass (x:xs) in (True, y : rest)
      | otherwise = let (swapped, rest) = pass (y:xs) in (swapped, x : rest)
    pass xs = (False, xs)  -- Nenhuma troca feita, lista já ordenada

main :: IO ()
main = print $ bubbleSort [5, 3, 8, 4, 2]
