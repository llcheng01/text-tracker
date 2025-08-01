module TermsSpec (spec) where

import Test.Hspec
import Terms (extractLinks)

spec :: Spec
spec = describe "Terms.extractLinks" $ do
    it "extracts single link" $ do
        extractLinks "Some [[link1]] text" `shouldBe` ["link1"]
    
    it "extracts multiple links" $ do
        extractLinks "Text [[link1]] and [[link2]] more text" `shouldBe` ["link1", "link2"]

    it "handles no links" $ do
        extractLinks "No Links here" `shouldBe` []