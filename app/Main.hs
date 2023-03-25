module Main (main) where

import DNA (toRNA)

main :: IO ()
main = do
  let result = toRNA "string"
  print result