removeNonUppercase :: [Char] -> [Char] 
removeNonUppercase cs = [c | c <- cs, c `elem` ['A'..'Z']]

xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
ls = [a+b | (a, b) <- xs]

head':: [x] -> x
head' [] = error "Empty list!"
head' (x: _) = x

tell :: (Show x) => [x] -> String
tell [] = "The list is empty"
tell (a:[]) = "There is one item in the list: " ++ show a
tell (a:b:[]) = "There are two items in the list: " ++ show a ++ ", " ++ show b
tell (a:b:xs) = "The list is long. The first two elements: " ++ show a ++ ", " ++ show b
