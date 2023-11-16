index :: Eq a -> a -> [a] -> Int
index _ [] = -1 -- Element not found
index x (y:ys) = if x == y then 0 else
                 if index x ys == -1 then -1 else
                 1 + index x ys
