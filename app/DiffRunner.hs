module Main where

import Diff (compareFiles)

main :: IO ()
main = compareFiles "notes/week1.md" "notes/week2.md"