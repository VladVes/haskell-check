-- 48. Как написать функцию с декларирование типов?
-- Написать removeNonUppercase функция удаляющая из строки все символы кроме заглавных
-- (с помощю генератора списка) с декларированием типов.
-- Написать функцию addThree с декларированием типов, которая принимает
-- три числа и возвращает их сумму
removeNonUpperCase :: [Char] -> [Char]
removeNonUpperCase sx = [s | s <- sx, s `elem` ['A'..'Z']] 

addThree :: Int -> Int -> Int -> Int
addThree a b c = a + b + c

addThree' :: Num a => a -> a -> a -> a
addThree' x y z = x + y + z


cmp :: (Ord a) => a -> a -> Ordering
cmp a b = a `compare` b

sh :: (Show a) => a -> String
sh a = show a

fromStrToInt a = read a :: Int

strPlusInt :: (Read a, Num a) => String -> a -> a 
strPlusInt a b = read a + b

minB :: Int
minB = minBound :: Int

maxB :: Int
maxB = maxBound :: Int

maxBt :: (Int, Bool, Char)
maxBt = maxBound :: (Int, Bool, Char)

fI :: (Integral a, Num b) => a -> b
fI a = fromIntegral a

length' :: [a] -> Int
length' xs = length xs

length'' :: (Num a) => [b] -> a
length'' xs = fromIntegral (length xs)
