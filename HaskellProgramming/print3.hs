-- | Print3

module Print3 where

myGreeting :: String
myGreeting = "Hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]
