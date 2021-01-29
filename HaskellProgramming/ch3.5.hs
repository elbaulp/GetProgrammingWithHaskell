module Reverse where

rvrs :: String -> String
rvrs x = a ++ " " ++ i ++ " " ++ c
  where a = drop 9 x
        i = take 2 (drop 6 x)
        c = take 5 x

main :: IO ()
main = print $ rvrs "Curry is awesome"
-- or print (rvrs "fjdsalk")
