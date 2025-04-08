-- 💥 Ejercicio 1

-- a
f:: Integer -> Integer
f 1 = 8
f 4 = 131
f 16 = 16

-- b
g:: Integer -> Integer
g 8 = 16
g 16 = 4
g 131 = 1

-- c
h:: Integer -> Integer
h x = g (f x)

k:: Integer -> Integer
k x = f (g x)

-- 💥 Ejercicio 2

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


-- i
digitoUnidades:: Integer -> Integer
digitoUnidades x = abs x `mod` 10
-- abs de x toma el valor absoluto para manejar negativos
-- mod 10 obtiene el digito de las unidades

-- i (float)
digitoUnidadesFloat:: Float -> Integer
digitoUnidadesFloat x = truncate (abs x) `mod` 10
-- truncate convierte el float a entero, eliminando la parte decimal

-- j
digitoDecenas:: Integer -> Integer
digitoDecenas x = abs x `div` 10 `mod` 10
-- div 10 obtiene el digito de las decenas, y mod 10 obtiene el digito de las unidades de ese resultado

-- j (float)
digitoDecenasFloat:: Float -> Integer
digitoDecenasFloat x = truncate (abs x) `div` 10 `mod` 10


-- 💥 Ejercicio 4

-- b
todoMenor:: (Float, Float) -> Bool
todoMenor (x , y) = x < y

-- f
posPrimerPar:: (Integer, Integer, Integer) -> Integer
posPrimerPar (x, y, z)
  | mod x 2 == 0 = 0
  | mod y 2 == 0 = 1
  | mod z 2 == 0 = 2
  | otherwise = 4
-- Se puede usar even en lugar de mod?


-- 💥 Ejercicio 6

bisiesto:: Integer -> Bool
bisiesto x
  | mod x 4 == 0 && mod x 100 /= 0 = True
  | mod x 400 == 0 = True
  | otherwise = False

-- 💥 Ejercicio 7

distanciaManhattan:: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (p0, p1, p2) (q0, q1, q2) = abs (p0-q0) + abs (p1-q1) + abs (p2-q2)
-- Uso abs para no considerar distancias negativas

-- 💥 Ejercicio 8

sumaUltimosDosDigitos:: Integer -> Integer
sumaUltimosDosDigitos x = digitoUnidades x + digitoDecenas x

comparar:: Integer -> Integer -> Integer
comparar a b
 | sumaUltimosDosDigitos a < sumaUltimosDosDigitos b = 1
 | sumaUltimosDosDigitos a > sumaUltimosDosDigitos b = -1
 | otherwise = 0

-- 💥 Ejercicio 9

-- d

