-- Ejercicio 1

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
