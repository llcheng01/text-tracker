module Terms (extractLinks) where

import Text.Megaparsec
import Text.Megaparsec.Char
import Data.Void
import Control.Monad (void)

type Parser = Parsec Void String

linkParser :: Parser String
linkParser = between (string "[[") (string "]]") (many (noneOf "]"))

extractLinks :: String -> [String]
extractLinks input = case parse (many linkParser) "" input of
  Left _ -> []
  Right links -> links