getRequestURL host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

getHostRequestBuilder host = (\apiKey resource id -> getRequestURL host apiKey resource id)
getApiRequestBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)
x = [1, 2, 3]
y = "a"


simple x = x
longList = [1 ..]
stillLong = simple longList

a = x !! 1 -- or (!!) x 1
partialApp = (!!) x  -- or (x !!)
waitleft = ( !! 1)
waitRight = (x !!)

isPalindrome word = word == reverse word

-- Check for element
-- elem 1 x -> True
-- Make prefix function infix: 1 `elem` x
takeLast n aList = reverse (take n (reverse aList))

-- ZIPPIN
-- zip x x
zipped = zip [1 .. 10] [21 .. 25]

-- CYCLE
ones n = take n (cycle [1])
-- Grouping
assignToGroups n resources = zip groups resources
  where groups = cycle [1..n]

-- Q6.1
myRepeat x = cycle [x]
-- Q6.2
subseq s e l = drop s (take e l)
subseq2 s e l = take diff (drop s l)
  where diff = e - s
-- Q6.3
inFirstHalf x l = if elem x l2 then
                    True
                  else False
  where l2 = take (div (length l) 2) l

-- L7

-- GCD
myGCD :: Int -> Int -> Int
myGCD a b = if remainder == 0 then b
            else myGCD b remainder
  where remainder = mod a b

-- Q7.1
myTail (_:xs) = xs
myTail [] = []
-- Q7.2
pGCD :: Int -> Int -> Int
pGCD a 0 = a
pGCD a b = pGCD b (mod a b)


--------------
-- Lesson 8 --
--------------
myDrop 0 l = l
myDrop _ [] = []
myDrop n (_:xs) = myDrop (n-1) xs
myTake 0 _ = []
myTake _ [] = []
myTake n (x:xs) = x : myTake (n-1) xs

myLength [] = 0
myLength (_:xs)  = 1 + myLength xs

myCycle (x:xs) = x:myCycle (xs ++ [x])


ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

collatz 1 = 1
collatz n = if even n then
              1 + collatz (n `div` 2)
            else
              1 + collatz (n*3 +1)

-- Q8.1
myReverse [] = []
myReverse (x:[]) = [x]
myReverse (x:xs) = (myReverse xs) ++ [x]
