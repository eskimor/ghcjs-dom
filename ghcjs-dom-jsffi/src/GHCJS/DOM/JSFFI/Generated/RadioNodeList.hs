{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RadioNodeList
       (js__get, _get, _get_, _getUnsafe, _getUnchecked, js_setValue,
        setValue, js_getValue, getValue, RadioNodeList(..),
        gTypeRadioNodeList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        RadioNodeList -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_get :: (MonadIO m) => RadioNodeList -> Word -> m (Maybe Node)
_get self index
  = liftIO (nullableToMaybe <$> (js__get (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_get_ :: (MonadIO m) => RadioNodeList -> Word -> m ()
_get_ self index = liftIO (void (js__get (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_getUnsafe ::
           (MonadIO m, HasCallStack) => RadioNodeList -> Word -> m Node
_getUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js__get (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_getUnchecked :: (MonadIO m) => RadioNodeList -> Word -> m Node
_getUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js__get (self) index))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: RadioNodeList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => RadioNodeList -> val -> m ()
setValue self val = liftIO (js_setValue (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        RadioNodeList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => RadioNodeList -> m result
getValue self = liftIO (fromJSString <$> (js_getValue (self)))