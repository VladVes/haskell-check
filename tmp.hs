printNumber :: Int -> String
printNumber 1 = "One"
printNumber 2 = "Two"
printNumber 3 = "Three"
printNumber x = "Unknown number"


fact :: Integer -> Integer
fact 0 = 1
fact x = x * fact (x - 1)

sumVec :: (Num x) => (x, x) -> (x, x) -> (x, x)
sumVec x y = (fst x + fst y, snd x + snd y)


sumVec' :: (Num x) => (x, x) -> (x, x) -> (x, x)
sumVec' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)