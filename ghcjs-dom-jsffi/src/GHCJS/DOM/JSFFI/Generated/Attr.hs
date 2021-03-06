{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Attr
       (js_getName, getName, getNameUnsafe, getNameUnchecked,
        js_getSpecified, getSpecified, js_setValue, setValue, js_getValue,
        getValue, getValueUnsafe, getValueUnchecked, js_getOwnerElement,
        getOwnerElement, getOwnerElementUnsafe, getOwnerElementUnchecked,
        js_getIsId, getIsId, Attr(..), gTypeAttr)
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
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        Attr -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getName self = liftIO (fromMaybeJSString <$> (js_getName (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getNameUnsafe ::
              (MonadIO m, HasCallStack, FromJSString result) => Attr -> m result
getNameUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getName (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getNameUnchecked ::
                 (MonadIO m, FromJSString result) => Attr -> m result
getNameUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        js_getSpecified :: Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadIO m) => Attr -> m Bool
getSpecified self = liftIO (js_getSpecified (self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: Attr -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => Attr -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        Attr -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getValue self = liftIO (fromMaybeJSString <$> (js_getValue (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValueUnsafe ::
               (MonadIO m, HasCallStack, FromJSString result) => Attr -> m result
getValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getValue (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValueUnchecked ::
                  (MonadIO m, FromJSString result) => Attr -> m result
getValueUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        js_getOwnerElement :: Attr -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadIO m) => Attr -> m (Maybe Element)
getOwnerElement self
  = liftIO (nullableToMaybe <$> (js_getOwnerElement (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElementUnsafe ::
                      (MonadIO m, HasCallStack) => Attr -> m Element
getOwnerElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOwnerElement (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElementUnchecked :: (MonadIO m) => Attr -> m Element
getOwnerElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getOwnerElement (self)))
 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        js_getIsId :: Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.isId Mozilla Attr.isId documentation> 
getIsId :: (MonadIO m) => Attr -> m Bool
getIsId self = liftIO (js_getIsId (self))