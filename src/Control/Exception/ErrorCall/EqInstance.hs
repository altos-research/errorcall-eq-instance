{-# LANGUAGE CPP, StandaloneDeriving #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Control.Exception.ErrorCall.EqInstance where


#if !MIN_VERSION_base(4,7,0)
import           Control.Exception
deriving instance Eq ErrorCall
#endif
