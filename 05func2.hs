import Distribution.Simple.Utils (xargs)
-- 64. Оределить функцию без применения условного выражения if then else
-- так что бы она выводила бы название (строкой) переданногй ей цифры
-- от 1 до 3 (т.е. если 1 то отдаёт "one", 2 - "two" и т.д.) а для остальных бы возвращала бы "Unknown number"
sayMe :: Int -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe x = "Unknown number"

-- 65. Написать фукнцию factorial возвращающую факториал используя подход сопоставления с образцом и рекурсию
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)


-- 66. Как определить функцию принимающую и складывающую два двумерных вектора представленных парами?
-- Определить обычным образом и использую сопоставление
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors' (x1, x2) (y1, y2) = (x1 + y1, x2 + y2)


-- 67. Используя метод сопоставления написать функуции для работы с тройками
-- (кортежами из трех элементов) на подобии fst и snd но извлекающие так же
-- и третий элемент
first :: (Num x) => (x, x, x) -> x
first (x, _, _) = x
second :: (Num x) => (x, x, x) -> x
second (_, x, _) = x
third :: (Num x) => (x, x, x) -> x
third (_, _, x) = x

-- 72. Используя метод сопоставления еаписать функцию tell которая сообщает
-- о нескольких первых элементах списка в виде строк: "The list is empty",
-- "There is one item in the list: <значение>",
-- "There are two items in the list: <значение 1> и <значение 2>",
-- "The list is long. The first two elements: <значение 1> и <значение 2>" (так же описать тип функции в начале)
tell :: (Show x) => [x] -> String
tell [] = "The list is empty"
tell (a:[]) = "There is one item in the list: " ++ show a
tell (a:b:[]) = "There are two items in the list: " ++ show a ++ ", " ++ show b
tell (a:b:_) = "The list is long. The first two elements: " ++ show a ++ ", " ++ show b