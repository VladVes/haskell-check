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