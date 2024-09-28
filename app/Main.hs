{-# LANGUAGE TemplateHaskell #-}

module Main where

import Text.Printf

main :: IO ()
main = printf "hi %.2f " $ compounding 10


compounding :: Int  -> Double
compounding 0 = 1000
compounding n = 1.05 * compounding(n-1)