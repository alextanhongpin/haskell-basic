
main = do
  -- let odd = [x | x <- [1..10], x `mod` 2 == 1]
  let oddNumbers = [x | x <- [1..10], odd x]
  putStr "Printing odd\n:"
  putStr (show oddNumbers)
  
  -- let even = [x | x <- [1..10], x `mod` 2 == 0]
  let evenNumbers = [x | x <- [1..10], even x]
  putStrLn "Printing even\n:"
  putStrLn (show evenNumbers)

  -- circumference :: Float -> Float
  let circumference r = 2 * pi * r
  putStrLn (show (circumference 10))

  -- Indentation matters for function signature!
  let lucky :: (Integral a) => a -> String
      lucky 7 = "LUCKY NUMBER SEVEN!"
      lucky x = "Sorry, you're out of luck, pal!"

  putStrLn (show (lucky 7))
  putStrLn (show (lucky 23))

  -- Wrie it inline!
  let add3 :: Int -> Int; add3 x = x + 3
  putStrLn (show $ add3 3)

  let sayMe :: (Integral a) => a -> String
      sayMe 1 = "one"
      sayMe 2 = "two"
      sayMe 3 = "three"
      sayMe 4 = "four"
      sayMe 5 = "five"
      sayMe x = "Not between 1 and 5"
  putStrLn (sayMe 2)
  putStrLn (sayMe 5)
  putStrLn (sayMe 10)

  let addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
      addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
  putStrLn (show $ addVectors (10, 2) (3, 4))

  -- let tell :: [a] -> String
  --     tell [] = "The list is empty"
  --     tell (x:[]) = "The list has one element:"
  --     tell (x:y:[]) = "The list has two elements:" ++ show x ++ "s"
  --     tell (x:y:_) = "The list has a lot of elements"
  -- putStrLn (tell [1,2,3]) 
  -- putStrLn (tell [1]) 
  -- putStrLn (tell [1,2]) 

  let bmiTell :: (RealFloat a) => a -> a -> String
      bmiTell height weight 
        | bmi <= skinny = "You're underweight"
        | bmi <= normal = "You are normal"
        | bmi <= fat = "You're fat"
        | otherwise = "You're a whale"
        where bmi = weight / height ^ 2
              (skinny, normal, fat) = (18.5, 25.0, 30.0)
      
  putStrLn (bmiTell 75 170)

  let names :: Char -> String
      names name 
        | name == 'a' = "alex"
        | name `elem` "b" = "beta"
        | otherwise = "observer"
  putStrLn(names 'a')

  let names2 :: Char -> String
      names2 name = case name of 'a' -> "alex"
                                 'b' -> "beta"
                                 otherwise -> "wohooo"
  putStrLn(names2 't')

  let initials :: String -> String -> String
      initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
        where (f:_) = firstName
              (l:_) = lastName
  putStrLn(initials "john" "doe")