import System.IO (hFlush, stdout)

main :: IO ()
main = do
  putStr "Enter a positive integer: "
  hFlush stdout
  nStr <- getLine
  let n = read nStr :: Int

  let sum = sumEvenNumbers n
  putStrLn $ "Sum of even numbers from 2 to " ++ show n ++ " is " ++ show sum

sumEvenNumbers :: Int -> Int
sumEvenNumbers n = sum [x | x <- [2, 4..n], x <= n]