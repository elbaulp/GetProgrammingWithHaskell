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

plus :: Num a => a -> a -> a
plus = (+)
h :: [a] -> Int
h xs = w `plus` 1
  where w = length xs

-- ID function
myId :: a -> a
myId = \x -> x

myHead :: [a] -> a
myHead = \(x : _) -> x

myF :: a -> b -> a
myF a _ = a

-- Data constructors can be constant values (Nullary), like Cat,
-- or take one or more arguments, like Dog
type Name = String
data Pet = Cat | Dog Name deriving Show

-- Polymorphism
id :: a -> a
id x = x
-- Id is parametrically polymorphic, because it works on any type
isEqual :: Eq a => a -> a -> Bool
isEqual x y = x == y
-- isEqual is polymorphic, but constrained or bounded to types with Eq instance

main :: IO ()
main = do
  print $ length (concat allAwesome)
  print $ isPalindrome ["a","b","a" ]
  print $ isPalindrome "ABA"
  print $ myAbs 10
  print $ myAbs (-10)
  print $ Cat
  print $ Dog "MyDog"
