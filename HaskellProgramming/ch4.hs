-- | Chapter 4

module Ch4 where


-- Anatomy of a data declaration

data Mood = Blah | Woot deriving Show

-- Not function for Mood
changeMood :: Mood -> Mood
changeMood Woot = Blah
changeMood _    = Woot

-- Chapter exercises
awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]
alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]
allAwesome :: [[String]]
allAwesome = [awesome, alsoAwesome]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x = if x<0 then -x else x

f :: (a, b) -> (c, d) -> ((b,d), (a,c))
f x y = ((snd x, snd y), (fst x, fst y))

main :: IO ()
main = do
  print $ length (concat allAwesome)
  print $ isPalindrome ["a","b","a" ]
  print $ isPalindrome "ABA"
  print $ myAbs 10
  print $ myAbs (-10)
