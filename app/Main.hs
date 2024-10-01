{-# LANGUAGE TemplateHaskell #-}

module Main where

import Text.Printf
-- import Data.Text (Text, pack)

main :: IO ()
main = printf "hi %.2f " $ compounding 10


compounding :: Int  -> Double
compounding 0 = 1000
compounding n = 1.05 * compounding(n-1)

add :: Int -> Int -> Int
add x y = x + y

add2 :: Int -> (Int -> Int)
add2 = (\x -> (\y -> x + y))

inc :: Int -> Int
inc x = x + 1

toStr :: Int -> String
toStr x = show x

comp :: (Int -> Int) -> (Int -> String) -> Int -> String
comp x y num = y $ x num

_foldr :: (Int -> Int -> Int) -> Int -> [Int] -> Int
_foldr _ acc []     = acc
_foldr f acc (x:xs) = f x (foldr f acc xs)

