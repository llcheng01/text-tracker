module Main where

import Terms (extractLinks)

main :: IO ()
main = do
  content <- readFile "notes/week2.md"
  let links = extractLinks content
  putStrLn "Found [[links]]:"
  mapM_ putStrLn links