--fold remove
foldr (\x y -> if (x `elem` "abc") then y else x:y) "" "Thabis sabecncteanbce"
