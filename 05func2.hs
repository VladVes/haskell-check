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


