module Main

filter : (a -> Bool) -> Stream a -> Stream a
filter f (x :: xs) = if (f x) then (x :: (filter f xs)) else filter f xs

primes : Stream Integer
primes = sieve [2..]
  where
    sieve : Stream Integer -> Stream Integer
    sieve (p :: xs) = p :: sieve (filter (\x => mod x p > 0) xs)

main : IO()
main = do     
  printLn $ take 13 (map (+1) primes)
