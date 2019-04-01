-- SumSquareOrSquareSum using lambda

sumSquareorSquareSum x y = (\sumSquare squareSum ->
                              if sumSquare > squareSum
                              then sumSquare
                              else squareSum) (x^2 + y^2) ((x+y)^2)

-- Lesson 4. First-class functions
ifEven myFunction x = if even x
                      then myFunction x
                      else x
                      
inc n = n + 1
double n = n*2
square n = n^2

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n

names = [("Ian", "Curtis"),
         ("Bernard","Sumner"),
         ("Peter", "Hook"),
         ("Stephen","Morris")]
         
import Data.List

addressLetter name location = nameText ++ " - " ++location
  where nameText = (fst name) ++ " " ++ (snd name)
  
sfOffice name = if lastName < "L"
                then nameText
                     ++ " - PO Box 1234 - San Francisco, CA, 94111"
                else nameText
                     ++ " - PO Box 1010 - San Francisco, CA, 94109"
  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
  where nameText = (fst name) ++ " " ++ (snd name)
renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
  where nameText = snd name
  
getLocationFunction location = case location of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name -> (fst name) ++ " " ++ (snd name))


addressLetter name location = locationFunction name
  where locationFunction = getLocationFunction location  
  
  
-- Q5.1
-- Write a function genIfXEven that creates a closure with x and returns a new
-- function that allows the user to pass in a function to apply to x if x is even.

-- Q5.4
-- Use flip and partial application to create a function called subtract2 that removes 2
-- from whatever number is passed in to it. 
-- First approach:
minus x y = x - y
substract2 = flip minus 2
-- Second approach
subtract2 = flip (-) 2
-- Putting () around an infix function makes it a prefix function
