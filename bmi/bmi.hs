bmiTell :: (RealFloat a) => a -> a -> String

bmiTell weight height 
    | bmi <= skinny = "You are underweight"
    | bmi <= normal = "You are normal"
    | bmi <= fat = "You are fat" 
    | otherwise = "You are a whale"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)

main = putStr (bmiTell 105 1.90)