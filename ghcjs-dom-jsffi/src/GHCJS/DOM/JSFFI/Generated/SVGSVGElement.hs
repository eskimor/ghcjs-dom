{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGSVGElement
       (js_suspendRedraw, suspendRedraw, suspendRedraw_,
        js_unsuspendRedraw, unsuspendRedraw, js_unsuspendRedrawAll,
        unsuspendRedrawAll, js_forceRedraw, forceRedraw,
        js_pauseAnimations, pauseAnimations, js_unpauseAnimations,
        unpauseAnimations, js_animationsPaused, animationsPaused,
        animationsPaused_, js_getCurrentTime, getCurrentTime,
        getCurrentTime_, js_setCurrentTime, setCurrentTime,
        js_getIntersectionList, getIntersectionList, getIntersectionList_,
        getIntersectionListUnsafe, getIntersectionListUnchecked,
        js_getEnclosureList, getEnclosureList, getEnclosureList_,
        getEnclosureListUnsafe, getEnclosureListUnchecked,
        js_checkIntersection, checkIntersection, checkIntersection_,
        js_checkEnclosure, checkEnclosure, checkEnclosure_, js_deselectAll,
        deselectAll, js_createSVGNumber, createSVGNumber, createSVGNumber_,
        createSVGNumberUnsafe, createSVGNumberUnchecked,
        js_createSVGLength, createSVGLength, createSVGLength_,
        createSVGLengthUnsafe, createSVGLengthUnchecked, js_createSVGAngle,
        createSVGAngle, createSVGAngle_, createSVGAngleUnsafe,
        createSVGAngleUnchecked, js_createSVGPoint, createSVGPoint,
        createSVGPoint_, createSVGPointUnsafe, createSVGPointUnchecked,
        js_createSVGMatrix, createSVGMatrix, createSVGMatrix_,
        createSVGMatrixUnsafe, createSVGMatrixUnchecked, js_createSVGRect,
        createSVGRect, createSVGRect_, createSVGRectUnsafe,
        createSVGRectUnchecked, js_createSVGTransform, createSVGTransform,
        createSVGTransform_, createSVGTransformUnsafe,
        createSVGTransformUnchecked, js_createSVGTransformFromMatrix,
        createSVGTransformFromMatrix, createSVGTransformFromMatrix_,
        createSVGTransformFromMatrixUnsafe,
        createSVGTransformFromMatrixUnchecked, js_getElementById,
        getElementById, getElementById_, getElementByIdUnsafe,
        getElementByIdUnchecked, js_getX, getX, getXUnsafe, getXUnchecked,
        js_getY, getY, getYUnsafe, getYUnchecked, js_getWidth, getWidth,
        getWidthUnsafe, getWidthUnchecked, js_getHeight, getHeight,
        getHeightUnsafe, getHeightUnchecked, js_setContentScriptType,
        setContentScriptType, js_getContentScriptType,
        getContentScriptType, js_setContentStyleType, setContentStyleType,
        js_getContentStyleType, getContentStyleType, js_getViewport,
        getViewport, getViewportUnsafe, getViewportUnchecked,
        js_getPixelUnitToMillimeterX, getPixelUnitToMillimeterX,
        js_getPixelUnitToMillimeterY, getPixelUnitToMillimeterY,
        js_getScreenPixelToMillimeterX, getScreenPixelToMillimeterX,
        js_getScreenPixelToMillimeterY, getScreenPixelToMillimeterY,
        js_getUseCurrentView, getUseCurrentView, js_getCurrentView,
        getCurrentView, getCurrentViewUnsafe, getCurrentViewUnchecked,
        js_setCurrentScale, setCurrentScale, js_getCurrentScale,
        getCurrentScale, js_getCurrentTranslate, getCurrentTranslate,
        getCurrentTranslateUnsafe, getCurrentTranslateUnchecked,
        SVGSVGElement(..), gTypeSVGSVGElement)
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
 
foreign import javascript unsafe "$1[\"suspendRedraw\"]($2)"
        js_suspendRedraw :: SVGSVGElement -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
suspendRedraw :: (MonadIO m) => SVGSVGElement -> Word -> m Word
suspendRedraw self maxWaitMilliseconds
  = liftIO (js_suspendRedraw (self) maxWaitMilliseconds)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
suspendRedraw_ :: (MonadIO m) => SVGSVGElement -> Word -> m ()
suspendRedraw_ self maxWaitMilliseconds
  = liftIO (void (js_suspendRedraw (self) maxWaitMilliseconds))
 
foreign import javascript unsafe "$1[\"unsuspendRedraw\"]($2)"
        js_unsuspendRedraw :: SVGSVGElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedraw Mozilla SVGSVGElement.unsuspendRedraw documentation> 
unsuspendRedraw :: (MonadIO m) => SVGSVGElement -> Word -> m ()
unsuspendRedraw self suspendHandleId
  = liftIO (js_unsuspendRedraw (self) suspendHandleId)
 
foreign import javascript unsafe "$1[\"unsuspendRedrawAll\"]()"
        js_unsuspendRedrawAll :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedrawAll Mozilla SVGSVGElement.unsuspendRedrawAll documentation> 
unsuspendRedrawAll :: (MonadIO m) => SVGSVGElement -> m ()
unsuspendRedrawAll self = liftIO (js_unsuspendRedrawAll (self))
 
foreign import javascript unsafe "$1[\"forceRedraw\"]()"
        js_forceRedraw :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.forceRedraw Mozilla SVGSVGElement.forceRedraw documentation> 
forceRedraw :: (MonadIO m) => SVGSVGElement -> m ()
forceRedraw self = liftIO (js_forceRedraw (self))
 
foreign import javascript unsafe "$1[\"pauseAnimations\"]()"
        js_pauseAnimations :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pauseAnimations Mozilla SVGSVGElement.pauseAnimations documentation> 
pauseAnimations :: (MonadIO m) => SVGSVGElement -> m ()
pauseAnimations self = liftIO (js_pauseAnimations (self))
 
foreign import javascript unsafe "$1[\"unpauseAnimations\"]()"
        js_unpauseAnimations :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unpauseAnimations Mozilla SVGSVGElement.unpauseAnimations documentation> 
unpauseAnimations :: (MonadIO m) => SVGSVGElement -> m ()
unpauseAnimations self = liftIO (js_unpauseAnimations (self))
 
foreign import javascript unsafe
        "($1[\"animationsPaused\"]() ? 1 : 0)" js_animationsPaused ::
        SVGSVGElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
animationsPaused :: (MonadIO m) => SVGSVGElement -> m Bool
animationsPaused self = liftIO (js_animationsPaused (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
animationsPaused_ :: (MonadIO m) => SVGSVGElement -> m ()
animationsPaused_ self = liftIO (void (js_animationsPaused (self)))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        js_getCurrentTime :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getCurrentTime Mozilla SVGSVGElement.getCurrentTime documentation> 
getCurrentTime :: (MonadIO m) => SVGSVGElement -> m Float
getCurrentTime self = liftIO (js_getCurrentTime (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getCurrentTime Mozilla SVGSVGElement.getCurrentTime documentation> 
getCurrentTime_ :: (MonadIO m) => SVGSVGElement -> m ()
getCurrentTime_ self = liftIO (void (js_getCurrentTime (self)))
 
foreign import javascript unsafe "$1[\"setCurrentTime\"]($2)"
        js_setCurrentTime :: SVGSVGElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.setCurrentTime Mozilla SVGSVGElement.setCurrentTime documentation> 
setCurrentTime :: (MonadIO m) => SVGSVGElement -> Float -> m ()
setCurrentTime self seconds
  = liftIO (js_setCurrentTime (self) seconds)
 
foreign import javascript unsafe
        "$1[\"getIntersectionList\"]($2,\n$3)" js_getIntersectionList ::
        SVGSVGElement ->
          Nullable SVGRect -> Nullable SVGElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionList ::
                    (MonadIO m, IsSVGElement referenceElement) =>
                      SVGSVGElement ->
                        Maybe SVGRect -> Maybe referenceElement -> m (Maybe NodeList)
getIntersectionList self rect referenceElement
  = liftIO
      (nullableToMaybe <$>
         (js_getIntersectionList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionList_ ::
                     (MonadIO m, IsSVGElement referenceElement) =>
                       SVGSVGElement -> Maybe SVGRect -> Maybe referenceElement -> m ()
getIntersectionList_ self rect referenceElement
  = liftIO
      (void
         (js_getIntersectionList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionListUnsafe ::
                          (MonadIO m, IsSVGElement referenceElement, HasCallStack) =>
                            SVGSVGElement ->
                              Maybe SVGRect -> Maybe referenceElement -> m NodeList
getIntersectionListUnsafe self rect referenceElement
  = liftIO
      ((nullableToMaybe <$>
          (js_getIntersectionList (self) (maybeToNullable rect)
             (maybeToNullable (fmap toSVGElement referenceElement))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionListUnchecked ::
                             (MonadIO m, IsSVGElement referenceElement) =>
                               SVGSVGElement ->
                                 Maybe SVGRect -> Maybe referenceElement -> m NodeList
getIntersectionListUnchecked self rect referenceElement
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getIntersectionList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))
 
foreign import javascript unsafe "$1[\"getEnclosureList\"]($2, $3)"
        js_getEnclosureList ::
        SVGSVGElement ->
          Nullable SVGRect -> Nullable SVGElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureList ::
                 (MonadIO m, IsSVGElement referenceElement) =>
                   SVGSVGElement ->
                     Maybe SVGRect -> Maybe referenceElement -> m (Maybe NodeList)
getEnclosureList self rect referenceElement
  = liftIO
      (nullableToMaybe <$>
         (js_getEnclosureList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureList_ ::
                  (MonadIO m, IsSVGElement referenceElement) =>
                    SVGSVGElement -> Maybe SVGRect -> Maybe referenceElement -> m ()
getEnclosureList_ self rect referenceElement
  = liftIO
      (void
         (js_getEnclosureList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureListUnsafe ::
                       (MonadIO m, IsSVGElement referenceElement, HasCallStack) =>
                         SVGSVGElement ->
                           Maybe SVGRect -> Maybe referenceElement -> m NodeList
getEnclosureListUnsafe self rect referenceElement
  = liftIO
      ((nullableToMaybe <$>
          (js_getEnclosureList (self) (maybeToNullable rect)
             (maybeToNullable (fmap toSVGElement referenceElement))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureListUnchecked ::
                          (MonadIO m, IsSVGElement referenceElement) =>
                            SVGSVGElement ->
                              Maybe SVGRect -> Maybe referenceElement -> m NodeList
getEnclosureListUnchecked self rect referenceElement
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getEnclosureList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))
 
foreign import javascript unsafe
        "($1[\"checkIntersection\"]($2,\n$3) ? 1 : 0)" js_checkIntersection
        ::
        SVGSVGElement -> Nullable SVGElement -> Nullable SVGRect -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
checkIntersection ::
                  (MonadIO m, IsSVGElement element) =>
                    SVGSVGElement -> Maybe element -> Maybe SVGRect -> m Bool
checkIntersection self element rect
  = liftIO
      (js_checkIntersection (self)
         (maybeToNullable (fmap toSVGElement element))
         (maybeToNullable rect))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
checkIntersection_ ::
                   (MonadIO m, IsSVGElement element) =>
                     SVGSVGElement -> Maybe element -> Maybe SVGRect -> m ()
checkIntersection_ self element rect
  = liftIO
      (void
         (js_checkIntersection (self)
            (maybeToNullable (fmap toSVGElement element))
            (maybeToNullable rect)))
 
foreign import javascript unsafe
        "($1[\"checkEnclosure\"]($2,\n$3) ? 1 : 0)" js_checkEnclosure ::
        SVGSVGElement -> Nullable SVGElement -> Nullable SVGRect -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
checkEnclosure ::
               (MonadIO m, IsSVGElement element) =>
                 SVGSVGElement -> Maybe element -> Maybe SVGRect -> m Bool
checkEnclosure self element rect
  = liftIO
      (js_checkEnclosure (self)
         (maybeToNullable (fmap toSVGElement element))
         (maybeToNullable rect))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
checkEnclosure_ ::
                (MonadIO m, IsSVGElement element) =>
                  SVGSVGElement -> Maybe element -> Maybe SVGRect -> m ()
checkEnclosure_ self element rect
  = liftIO
      (void
         (js_checkEnclosure (self)
            (maybeToNullable (fmap toSVGElement element))
            (maybeToNullable rect)))
 
foreign import javascript unsafe "$1[\"deselectAll\"]()"
        js_deselectAll :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.deselectAll Mozilla SVGSVGElement.deselectAll documentation> 
deselectAll :: (MonadIO m) => SVGSVGElement -> m ()
deselectAll self = liftIO (js_deselectAll (self))
 
foreign import javascript unsafe "$1[\"createSVGNumber\"]()"
        js_createSVGNumber :: SVGSVGElement -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumber ::
                (MonadIO m) => SVGSVGElement -> m (Maybe SVGNumber)
createSVGNumber self
  = liftIO (nullableToMaybe <$> (js_createSVGNumber (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumber_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGNumber_ self = liftIO (void (js_createSVGNumber (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumberUnsafe ::
                      (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGNumber
createSVGNumberUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGNumber (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumberUnchecked ::
                         (MonadIO m) => SVGSVGElement -> m SVGNumber
createSVGNumberUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createSVGNumber (self)))
 
foreign import javascript unsafe "$1[\"createSVGLength\"]()"
        js_createSVGLength :: SVGSVGElement -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLength ::
                (MonadIO m) => SVGSVGElement -> m (Maybe SVGLength)
createSVGLength self
  = liftIO (nullableToMaybe <$> (js_createSVGLength (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLength_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGLength_ self = liftIO (void (js_createSVGLength (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLengthUnsafe ::
                      (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGLength
createSVGLengthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGLength (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLengthUnchecked ::
                         (MonadIO m) => SVGSVGElement -> m SVGLength
createSVGLengthUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createSVGLength (self)))
 
foreign import javascript unsafe "$1[\"createSVGAngle\"]()"
        js_createSVGAngle :: SVGSVGElement -> IO (Nullable SVGAngle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngle ::
               (MonadIO m) => SVGSVGElement -> m (Maybe SVGAngle)
createSVGAngle self
  = liftIO (nullableToMaybe <$> (js_createSVGAngle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngle_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGAngle_ self = liftIO (void (js_createSVGAngle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngleUnsafe ::
                     (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGAngle
createSVGAngleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGAngle (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngleUnchecked ::
                        (MonadIO m) => SVGSVGElement -> m SVGAngle
createSVGAngleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createSVGAngle (self)))
 
foreign import javascript unsafe "$1[\"createSVGPoint\"]()"
        js_createSVGPoint :: SVGSVGElement -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPoint ::
               (MonadIO m) => SVGSVGElement -> m (Maybe SVGPoint)
createSVGPoint self
  = liftIO (nullableToMaybe <$> (js_createSVGPoint (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPoint_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGPoint_ self = liftIO (void (js_createSVGPoint (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPointUnsafe ::
                     (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGPoint
createSVGPointUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGPoint (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPointUnchecked ::
                        (MonadIO m) => SVGSVGElement -> m SVGPoint
createSVGPointUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createSVGPoint (self)))
 
foreign import javascript unsafe "$1[\"createSVGMatrix\"]()"
        js_createSVGMatrix :: SVGSVGElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrix ::
                (MonadIO m) => SVGSVGElement -> m (Maybe SVGMatrix)
createSVGMatrix self
  = liftIO (nullableToMaybe <$> (js_createSVGMatrix (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrix_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGMatrix_ self = liftIO (void (js_createSVGMatrix (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrixUnsafe ::
                      (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGMatrix
createSVGMatrixUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGMatrix (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrixUnchecked ::
                         (MonadIO m) => SVGSVGElement -> m SVGMatrix
createSVGMatrixUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createSVGMatrix (self)))
 
foreign import javascript unsafe "$1[\"createSVGRect\"]()"
        js_createSVGRect :: SVGSVGElement -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRect :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGRect)
createSVGRect self
  = liftIO (nullableToMaybe <$> (js_createSVGRect (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRect_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGRect_ self = liftIO (void (js_createSVGRect (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRectUnsafe ::
                    (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGRect
createSVGRectUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGRect (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRectUnchecked :: (MonadIO m) => SVGSVGElement -> m SVGRect
createSVGRectUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_createSVGRect (self)))
 
foreign import javascript unsafe "$1[\"createSVGTransform\"]()"
        js_createSVGTransform ::
        SVGSVGElement -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransform ::
                   (MonadIO m) => SVGSVGElement -> m (Maybe SVGTransform)
createSVGTransform self
  = liftIO (nullableToMaybe <$> (js_createSVGTransform (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransform_ :: (MonadIO m) => SVGSVGElement -> m ()
createSVGTransform_ self
  = liftIO (void (js_createSVGTransform (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransformUnsafe ::
                         (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGTransform
createSVGTransformUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createSVGTransform (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransformUnchecked ::
                            (MonadIO m) => SVGSVGElement -> m SVGTransform
createSVGTransformUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createSVGTransform (self)))
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        js_createSVGTransformFromMatrix ::
        SVGSVGElement -> Nullable SVGMatrix -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadIO m) =>
                               SVGSVGElement -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix_ ::
                              (MonadIO m) => SVGSVGElement -> Maybe SVGMatrix -> m ()
createSVGTransformFromMatrix_ self matrix
  = liftIO
      (void
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrixUnsafe ::
                                   (MonadIO m, HasCallStack) =>
                                     SVGSVGElement -> Maybe SVGMatrix -> m SVGTransform
createSVGTransformFromMatrixUnsafe self matrix
  = liftIO
      ((nullableToMaybe <$>
          (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrixUnchecked ::
                                      (MonadIO m) =>
                                        SVGSVGElement -> Maybe SVGMatrix -> m SVGTransform
createSVGTransformFromMatrixUnchecked self matrix
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        js_getElementById ::
        SVGSVGElement -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementById ::
               (MonadIO m, ToJSString elementId) =>
                 SVGSVGElement -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftIO
      (nullableToMaybe <$>
         (js_getElementById (self) (toJSString elementId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementById_ ::
                (MonadIO m, ToJSString elementId) =>
                  SVGSVGElement -> elementId -> m ()
getElementById_ self elementId
  = liftIO (void (js_getElementById (self) (toJSString elementId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementByIdUnsafe ::
                     (MonadIO m, ToJSString elementId, HasCallStack) =>
                       SVGSVGElement -> elementId -> m Element
getElementByIdUnsafe self elementId
  = liftIO
      ((nullableToMaybe <$>
          (js_getElementById (self) (toJSString elementId)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementByIdUnchecked ::
                        (MonadIO m, ToJSString elementId) =>
                          SVGSVGElement -> elementId -> m Element
getElementByIdUnchecked self elementId
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getElementById (self) (toJSString elementId)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
getX :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
getXUnsafe ::
           (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGAnimatedLength
getXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGSVGElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
getY :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
getYUnsafe ::
           (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGAnimatedLength
getYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGSVGElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
getWidthUnsafe ::
               (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWidth (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGSVGElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
getHeightUnsafe ::
                (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHeight (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGSVGElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"contentScriptType\"] = $2;"
        js_setContentScriptType :: SVGSVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
setContentScriptType ::
                     (MonadIO m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentScriptType self val
  = liftIO (js_setContentScriptType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"contentScriptType\"]"
        js_getContentScriptType :: SVGSVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
getContentScriptType ::
                     (MonadIO m, FromJSString result) => SVGSVGElement -> m result
getContentScriptType self
  = liftIO (fromJSString <$> (js_getContentScriptType (self)))
 
foreign import javascript unsafe "$1[\"contentStyleType\"] = $2;"
        js_setContentStyleType :: SVGSVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
setContentStyleType ::
                    (MonadIO m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentStyleType self val
  = liftIO (js_setContentStyleType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"contentStyleType\"]"
        js_getContentStyleType :: SVGSVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
getContentStyleType ::
                    (MonadIO m, FromJSString result) => SVGSVGElement -> m result
getContentStyleType self
  = liftIO (fromJSString <$> (js_getContentStyleType (self)))
 
foreign import javascript unsafe "$1[\"viewport\"]" js_getViewport
        :: SVGSVGElement -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
getViewport :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGRect)
getViewport self
  = liftIO (nullableToMaybe <$> (js_getViewport (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
getViewportUnsafe ::
                  (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGRect
getViewportUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getViewport (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
getViewportUnchecked :: (MonadIO m) => SVGSVGElement -> m SVGRect
getViewportUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getViewport (self)))
 
foreign import javascript unsafe "$1[\"pixelUnitToMillimeterX\"]"
        js_getPixelUnitToMillimeterX :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterX Mozilla SVGSVGElement.pixelUnitToMillimeterX documentation> 
getPixelUnitToMillimeterX ::
                          (MonadIO m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterX self
  = liftIO (js_getPixelUnitToMillimeterX (self))
 
foreign import javascript unsafe "$1[\"pixelUnitToMillimeterY\"]"
        js_getPixelUnitToMillimeterY :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterY Mozilla SVGSVGElement.pixelUnitToMillimeterY documentation> 
getPixelUnitToMillimeterY ::
                          (MonadIO m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterY self
  = liftIO (js_getPixelUnitToMillimeterY (self))
 
foreign import javascript unsafe "$1[\"screenPixelToMillimeterX\"]"
        js_getScreenPixelToMillimeterX :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterX Mozilla SVGSVGElement.screenPixelToMillimeterX documentation> 
getScreenPixelToMillimeterX ::
                            (MonadIO m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterX self
  = liftIO (js_getScreenPixelToMillimeterX (self))
 
foreign import javascript unsafe "$1[\"screenPixelToMillimeterY\"]"
        js_getScreenPixelToMillimeterY :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterY Mozilla SVGSVGElement.screenPixelToMillimeterY documentation> 
getScreenPixelToMillimeterY ::
                            (MonadIO m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterY self
  = liftIO (js_getScreenPixelToMillimeterY (self))
 
foreign import javascript unsafe "($1[\"useCurrentView\"] ? 1 : 0)"
        js_getUseCurrentView :: SVGSVGElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.useCurrentView Mozilla SVGSVGElement.useCurrentView documentation> 
getUseCurrentView :: (MonadIO m) => SVGSVGElement -> m Bool
getUseCurrentView self = liftIO (js_getUseCurrentView (self))
 
foreign import javascript unsafe "$1[\"currentView\"]"
        js_getCurrentView :: SVGSVGElement -> IO (Nullable SVGViewSpec)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
getCurrentView ::
               (MonadIO m) => SVGSVGElement -> m (Maybe SVGViewSpec)
getCurrentView self
  = liftIO (nullableToMaybe <$> (js_getCurrentView (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
getCurrentViewUnsafe ::
                     (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGViewSpec
getCurrentViewUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCurrentView (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
getCurrentViewUnchecked ::
                        (MonadIO m) => SVGSVGElement -> m SVGViewSpec
getCurrentViewUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getCurrentView (self)))
 
foreign import javascript unsafe "$1[\"currentScale\"] = $2;"
        js_setCurrentScale :: SVGSVGElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
setCurrentScale :: (MonadIO m) => SVGSVGElement -> Float -> m ()
setCurrentScale self val = liftIO (js_setCurrentScale (self) val)
 
foreign import javascript unsafe "$1[\"currentScale\"]"
        js_getCurrentScale :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
getCurrentScale :: (MonadIO m) => SVGSVGElement -> m Float
getCurrentScale self = liftIO (js_getCurrentScale (self))
 
foreign import javascript unsafe "$1[\"currentTranslate\"]"
        js_getCurrentTranslate :: SVGSVGElement -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
getCurrentTranslate ::
                    (MonadIO m) => SVGSVGElement -> m (Maybe SVGPoint)
getCurrentTranslate self
  = liftIO (nullableToMaybe <$> (js_getCurrentTranslate (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
getCurrentTranslateUnsafe ::
                          (MonadIO m, HasCallStack) => SVGSVGElement -> m SVGPoint
getCurrentTranslateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCurrentTranslate (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
getCurrentTranslateUnchecked ::
                             (MonadIO m) => SVGSVGElement -> m SVGPoint
getCurrentTranslateUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getCurrentTranslate (self)))