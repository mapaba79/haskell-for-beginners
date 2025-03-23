import System.IO (hFlush, stdout)

main :: IO ()
main = do
  putStr "Enter the first number: "
  hFlush stdout
  aStr <- getLine
  let a = read aStr :: Int

  putStr "Enter the second number: "
  hFlush stdout
  bStr <- getLine
  let b = read bStr :: Int
  
  let sum = a + b
  print sum