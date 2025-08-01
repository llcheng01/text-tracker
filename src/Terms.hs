module Terms (extractLinks) where

import Text.Megaparsec
import Text.Megaparsec.Char
import Data.Void
import Control.Monad (void)

type Parser = Parsec Void String

linkParser :: Parser String
linkParser = between (string "[[") (string "]]") (many (noneOf "]"))

allLinks :: Parser [String]
allLinks = many (try linkParser <|> (anySingle >> return "")) >>= return . filter (/= "")

extractLinks :: String -> [String]
extractLinks input = case parse allLinks "" input of
  Left _ -> []
  Right links -> links