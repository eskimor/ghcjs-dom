{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPoint
       (js_matrixTransform, matrixTransform, matrixTransform_,
        matrixTransformUnsafe, matrixTransformUnchecked, js_setX, setX,
        js_getX, getX, js_setY, setY, js_getY, getY, SVGPoint(..),
        gTypeSVGPoint)
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
 
foreign import javascript unsafe "$1[\"matrixTransform\"]($2)"
        js_matrixTransform ::
        SVGPoint -> Nullable SVGMatrix -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransform ::
                (MonadIO m) => SVGPoint -> Maybe SVGMatrix -> m (Maybe SVGPoint)
matrixTransform self matrix
  = liftIO
      (nullableToMaybe <$>
         (js_matrixTransform (self) (maybeToNullable matrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransform_ ::
                 (MonadIO m) => SVGPoint -> Maybe SVGMatrix -> m ()
matrixTransform_ self matrix
  = liftIO
      (void (js_matrixTransform (self) (maybeToNullable matrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransformUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        SVGPoint -> Maybe SVGMatrix -> m SVGPoint
matrixTransformUnsafe self matrix
  = liftIO
      ((nullableToMaybe <$>
          (js_matrixTransform (self) (maybeToNullable matrix)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransformUnchecked ::
                         (MonadIO m) => SVGPoint -> Maybe SVGMatrix -> m SVGPoint
matrixTransformUnchecked self matrix
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_matrixTransform (self) (maybeToNullable matrix)))
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        SVGPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
setX :: (MonadIO m) => SVGPoint -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
getX :: (MonadIO m) => SVGPoint -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
setY :: (MonadIO m) => SVGPoint -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
getY :: (MonadIO m) => SVGPoint -> m Float
getY self = liftIO (js_getY (self))