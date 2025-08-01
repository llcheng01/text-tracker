module Diff (compareFiles) where

import Data.Algorithm.Diff (Diff(..), getGroupedDiff)
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

compareFiles :: FilePath -> FilePath -> IO ()
compareFiles f1 f2 = do
  t1 <- T.lines <$> TIO.readFile f1
  t2 <- T.lines <$> TIO.readFile f2
  let diff = getGroupedDiff t1 t2
  mapM_ print diff