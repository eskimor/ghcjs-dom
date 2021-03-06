{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeys
       (js_newMediaKeys, newMediaKeys, js_createSession, createSession,
        createSession_, createSessionUnsafe, createSessionUnchecked,
        js_isTypeSupported, isTypeSupported, isTypeSupported_,
        js_getKeySystem, getKeySystem, MediaKeys(..), gTypeMediaKeys)
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
 
foreign import javascript unsafe
        "new window[\"WebKitMediaKeys\"]($1)" js_newMediaKeys ::
        JSString -> IO MediaKeys

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation> 
newMediaKeys ::
             (MonadIO m, ToJSString keySystem) => keySystem -> m MediaKeys
newMediaKeys keySystem
  = liftIO (js_newMediaKeys (toJSString keySystem))
 
foreign import javascript unsafe "$1[\"createSession\"]($2, $3)"
        js_createSession ::
        MediaKeys ->
          JSString -> Nullable Uint8Array -> IO (Nullable MediaKeySession)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadIO m, ToJSString type', IsUint8Array initData) =>
                MediaKeys -> type' -> Maybe initData -> m (Maybe MediaKeySession)
createSession self type' initData
  = liftIO
      (nullableToMaybe <$>
         (js_createSession (self) (toJSString type')
            (maybeToNullable (fmap toUint8Array initData))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession_ ::
               (MonadIO m, ToJSString type', IsUint8Array initData) =>
                 MediaKeys -> type' -> Maybe initData -> m ()
createSession_ self type' initData
  = liftIO
      (void
         (js_createSession (self) (toJSString type')
            (maybeToNullable (fmap toUint8Array initData))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSessionUnsafe ::
                    (MonadIO m, ToJSString type', IsUint8Array initData,
                     HasCallStack) =>
                      MediaKeys -> type' -> Maybe initData -> m MediaKeySession
createSessionUnsafe self type' initData
  = liftIO
      ((nullableToMaybe <$>
          (js_createSession (self) (toJSString type')
             (maybeToNullable (fmap toUint8Array initData))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSessionUnchecked ::
                       (MonadIO m, ToJSString type', IsUint8Array initData) =>
                         MediaKeys -> type' -> Maybe initData -> m MediaKeySession
createSessionUnchecked self type' initData
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSession (self) (toJSString type')
            (maybeToNullable (fmap toUint8Array initData))))
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2,\n$3) ? 1 : 0)" js_isTypeSupported ::
        MediaKeys -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported ::
                (MonadIO m, ToJSString keySystem, ToJSString type') =>
                  MediaKeys -> keySystem -> type' -> m Bool
isTypeSupported self keySystem type'
  = liftIO
      (js_isTypeSupported (self) (toJSString keySystem)
         (toJSString type'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported_ ::
                 (MonadIO m, ToJSString keySystem, ToJSString type') =>
                   MediaKeys -> keySystem -> type' -> m ()
isTypeSupported_ self keySystem type'
  = liftIO
      (void
         (js_isTypeSupported (self) (toJSString keySystem)
            (toJSString type')))
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: MediaKeys -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.keySystem Mozilla WebKitMediaKeys.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => MediaKeys -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem (self)))