import Test.Hspec

import qualified TermsSpec

main :: IO ()
main = hspec $ do
    describe "Terms" TermsSpec.spec