{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaStreamTrackEvent
       (js_getTrack, getTrack, getTrackUnsafe, getTrackUnchecked,
        MediaStreamTrackEvent(..), gTypeMediaStreamTrackEvent)
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
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        MediaStreamTrackEvent -> IO (Nullable MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent.track Mozilla MediaStreamTrackEvent.track documentation> 
getTrack ::
         (MonadIO m) => MediaStreamTrackEvent -> m (Maybe MediaStreamTrack)
getTrack self = liftIO (nullableToMaybe <$> (js_getTrack (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent.track Mozilla MediaStreamTrackEvent.track documentation> 
getTrackUnsafe ::
               (MonadIO m, HasCallStack) =>
                 MediaStreamTrackEvent -> m MediaStreamTrack
getTrackUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTrack (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent.track Mozilla MediaStreamTrackEvent.track documentation> 
getTrackUnchecked ::
                  (MonadIO m) => MediaStreamTrackEvent -> m MediaStreamTrack
getTrackUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTrack (self)))