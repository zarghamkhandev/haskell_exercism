module Bob (responseFor) where

import Data.Char (isLetter, isSpace, isUpper)

responseFor :: String -> String
responseFor xs
  | null text = "Fine. Be that way!"
  | isAsking && isShouting = "Calm down, I know what I'm doing!"
  | isAsking = "Sure."
  | isShouting = "Whoa, chill out!"
  | otherwise = "Whatever."
  where
    text = filter (not . isSpace) xs
    isAsking = last text == '?'
    isShouting = all isUpper letters && any isUpper letters
    letters = filter isLetter text