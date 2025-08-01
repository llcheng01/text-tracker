module Main where

import Diff (compareFiles)
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    case args of
        [f1, f2] -> compareFiles f1 f2
        _ -> putStrLn "Usage: DiffRunner file1.md file2.md"