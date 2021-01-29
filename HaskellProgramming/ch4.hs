-- | Chapter 4

module Ch4 where


-- Anatomy of a data declaration

data Mood = Blah | Woot deriving Show

-- Not function for Mood
changeMood :: Mood -> Mood
changeMood Woot = Blah
changeMood _    = Woot

-- Go on and Bool me
