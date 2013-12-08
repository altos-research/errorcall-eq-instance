module Control.Exception.ErrorCall.EqInstanceSpec (main, spec) where

import           Test.Hspec
import           Test.QuickCheck

import           Control.Exception
import           Control.Exception.ErrorCall.EqInstance ()

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "ErrorCall" $ do
    it "is an instance of Eq" $
      property $ \xs ys -> do
        ErrorCall xs == ErrorCall ys `shouldBe` xs == ys
