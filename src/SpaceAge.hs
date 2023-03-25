module SpaceAge (Planet (..), ageOn) where

data Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = secondsToYears (getAge planet seconds)

secondsToYears :: Float -> Float
secondsToYears seconds = seconds / (60 * 60 * 24 * 365.25)

getAge :: Planet -> Float -> Float
getAge planet seconds
  | Mercury <- planet = seconds * 0.2408467
  | Venus <- planet = seconds * 0.61519726
  | Earth <- planet = seconds
  | Mars <- planet = seconds * 1.8808158
  | Jupiter <- planet = seconds * 11.862615
  | Saturn <- planet = seconds * 29.447498
  | Uranus <- planet = seconds * 84.016846
  | Neptune <- planet = seconds * 164.79132
