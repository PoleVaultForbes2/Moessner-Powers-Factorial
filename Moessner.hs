skip_every_n :: Int -> [Int] -> [Int]
--get index connected to value, combine the list if that index is not the nth value 
skip_every_n n list = [x | (i, x) <- zip [1..] list, mod i n /= 0]


skip_growing :: [Int] -> [Int]
skip_growing list = skip_helper 1 list
    where
        --base cases
        skip_helper _ [] = []
        skip_helper _ [_] = []
        skip_helper runSize xs = saved ++ skip_helper (runSize + 1) restOfList
            where
                --drop the first element
                newList = drop 1 xs
                --save the number of elements based on runSize
                saved = take runSize newList
                restOfList = drop runSize newList

running_sum :: [Int] -> [Int]
running_sum list = running_helper 0 list
    where
        running_helper _ [] = []
        running_helper prevSum (x:xs) = newSum : running_helper newSum xs
            where
            --add values together and join together in new list
                newSum = prevSum + x


moessner_powers :: Int -> [Int]
moessner_powers n = moessner_helper (n - 1) [1..]
  where
    moessner_helper 0 lst = lst
    moessner_helper k lst = moessner_helper (k - 1) (running_sum (skip_every_n (k + 1) lst))

    
moessner_factorials :: [Int]
moessner_factorials = factorial_helper [1..]
  where
    factorial_helper list = head summed : factorial_helper summed
        where
            skipped = skip_growing list
            summed = running_sum skipped

    

main :: IO ()
main =  do
    print(skip_every_n 2 [1, 2, 3, 4, 5, 6, 7, 8])
    print (skip_growing [10,20,30,40,50,60,70,80,90,100, 110, 120, 130, 140, 150])
    print(running_sum [1, 2, 3, 4, 5])
    print(take 10 (moessner_powers 3))
    print (take 9 moessner_factorials)
    
