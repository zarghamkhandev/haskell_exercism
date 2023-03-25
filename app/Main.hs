module Main (main) where

import CollatzConjecture (collatz)

main :: IO ()
main = do
  let result = collatz 12
  print result