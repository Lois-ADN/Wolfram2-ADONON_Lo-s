import System.Environment(getArgs)
import Data.List()
import Text.Printf

add :: [Int] -> Int
add [] = 0
add (elem1:elemmax) =
    let i = 0
    let add2 = if ((elem1 `mod` 2) == 0) then elem1 else 0
    in if ((i `mod` 2 == 0) && (elem1 `mod` 2) == 0) then (elem1 + add elemmax) + add2  else (add elemmax) + add2

--addindex :: [Int] -> Int
--addindex (elem1:elemmax) =
  --       if ((i `mod` 2) == 0) then elem1 + addindex elemmax else addindex elemmax
    --     i == i + 1
      --   where i = 0


main :: IO()
main = do
     putStrLn $ show (add [1, 2, 3, 6])
     
--     putStrLn $ add (read :: Int (args !! 1))