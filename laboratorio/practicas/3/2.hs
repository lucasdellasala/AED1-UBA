-- Ejercicio 2

-- c

maximo3:: Integer -> Integer -> Integer -> Integer
maximo3 x y z
  | x >= y && x >= z = x
  | y >= x && y >= z = y
  | otherwise        = z

-- g
sumaDistintos:: Integer -> Integer -> Integer -> Integer
sumaDistintos x y z
  | x == y && y == z = 0
  | x == y = z
  | x == z = y
  | y == z = x
  | otherwise = x + y + z