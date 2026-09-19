removeNonUppercase :: [Char] -> [Char]
removeNonUppercase cs = [c | c <- cs, c `elem` ['A'..'Z']]

addThree :: Num a => a -> a -> a -> a
addThree x y z = x + y + z