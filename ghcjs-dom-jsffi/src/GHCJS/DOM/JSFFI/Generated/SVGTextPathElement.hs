{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTextPathElement
       (pattern TEXTPATH_METHODTYPE_UNKNOWN,
        pattern TEXTPATH_METHODTYPE_ALIGN,
        pattern TEXTPATH_METHODTYPE_STRETCH,
        pattern TEXTPATH_SPACINGTYPE_UNKNOWN,
        pattern TEXTPATH_SPACINGTYPE_AUTO,
        pattern TEXTPATH_SPACINGTYPE_EXACT, js_getStartOffset,
        getStartOffset, getStartOffsetUnsafe, getStartOffsetUnchecked,
        js_getMethod, getMethod, getMethodUnsafe, getMethodUnchecked,
        js_getSpacing, getSpacing, getSpacingUnsafe, getSpacingUnchecked,
        SVGTextPathElement(..), gTypeSVGTextPathElement)
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
pattern TEXTPATH_METHODTYPE_UNKNOWN = 0
pattern TEXTPATH_METHODTYPE_ALIGN = 1
pattern TEXTPATH_METHODTYPE_STRETCH = 2
pattern TEXTPATH_SPACINGTYPE_UNKNOWN = 0
pattern TEXTPATH_SPACINGTYPE_AUTO = 1
pattern TEXTPATH_SPACINGTYPE_EXACT = 2
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        js_getStartOffset ::
        SVGTextPathElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffset ::
               (MonadIO m) => SVGTextPathElement -> m (Maybe SVGAnimatedLength)
getStartOffset self
  = liftIO (nullableToMaybe <$> (js_getStartOffset (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffsetUnsafe ::
                     (MonadIO m, HasCallStack) =>
                       SVGTextPathElement -> m SVGAnimatedLength
getStartOffsetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStartOffset (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffsetUnchecked ::
                        (MonadIO m) => SVGTextPathElement -> m SVGAnimatedLength
getStartOffsetUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStartOffset (self)))
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        SVGTextPathElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethod ::
          (MonadIO m) =>
            SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getMethod self = liftIO (nullableToMaybe <$> (js_getMethod (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethodUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGTextPathElement -> m SVGAnimatedEnumeration
getMethodUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMethod (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethodUnchecked ::
                   (MonadIO m) => SVGTextPathElement -> m SVGAnimatedEnumeration
getMethodUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getMethod (self)))
 
foreign import javascript unsafe "$1[\"spacing\"]" js_getSpacing ::
        SVGTextPathElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacing ::
           (MonadIO m) =>
             SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getSpacing self
  = liftIO (nullableToMaybe <$> (js_getSpacing (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacingUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGTextPathElement -> m SVGAnimatedEnumeration
getSpacingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSpacing (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacingUnchecked ::
                    (MonadIO m) => SVGTextPathElement -> m SVGAnimatedEnumeration
getSpacingUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSpacing (self)))