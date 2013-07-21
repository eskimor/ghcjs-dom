{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitPoint
       (ghcjs_dom_webkit_point_set_x, webKitPointSetX,
        ghcjs_dom_webkit_point_get_x, webKitPointGetX,
        ghcjs_dom_webkit_point_set_y, webKitPointSetY,
        ghcjs_dom_webkit_point_get_y, webKitPointGetY)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_webkit_point_set_x :: JSRef WebKitPoint -> Float -> IO ()
#else 
ghcjs_dom_webkit_point_set_x :: JSRef WebKitPoint -> Float -> IO ()
ghcjs_dom_webkit_point_set_x = undefined
#endif
 
webKitPointSetX :: (IsWebKitPoint self) => self -> Float -> IO ()
webKitPointSetX self val
  = ghcjs_dom_webkit_point_set_x (unWebKitPoint (toWebKitPoint self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_webkit_point_get_x :: JSRef WebKitPoint -> IO Float
#else 
ghcjs_dom_webkit_point_get_x :: JSRef WebKitPoint -> IO Float
ghcjs_dom_webkit_point_get_x = undefined
#endif
 
webKitPointGetX :: (IsWebKitPoint self) => self -> IO Float
webKitPointGetX self
  = ghcjs_dom_webkit_point_get_x (unWebKitPoint (toWebKitPoint self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_webkit_point_set_y :: JSRef WebKitPoint -> Float -> IO ()
#else 
ghcjs_dom_webkit_point_set_y :: JSRef WebKitPoint -> Float -> IO ()
ghcjs_dom_webkit_point_set_y = undefined
#endif
 
webKitPointSetY :: (IsWebKitPoint self) => self -> Float -> IO ()
webKitPointSetY self val
  = ghcjs_dom_webkit_point_set_y (unWebKitPoint (toWebKitPoint self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_webkit_point_get_y :: JSRef WebKitPoint -> IO Float
#else 
ghcjs_dom_webkit_point_get_y :: JSRef WebKitPoint -> IO Float
ghcjs_dom_webkit_point_get_y = undefined
#endif
 
webKitPointGetY :: (IsWebKitPoint self) => self -> IO Float
webKitPointGetY self
  = ghcjs_dom_webkit_point_get_y (unWebKitPoint (toWebKitPoint self))
#else
module GHCJS.DOM.WebKitPoint (
  module Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
  ) where
import Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
#endif