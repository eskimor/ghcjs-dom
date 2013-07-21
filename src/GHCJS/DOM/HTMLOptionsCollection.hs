{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptionsCollection
       (ghcjs_dom_html_options_collection_set_selected_index,
        htmlOptionsCollectionSetSelectedIndex,
        ghcjs_dom_html_options_collection_get_selected_index,
        htmlOptionsCollectionGetSelectedIndex)
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
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        ghcjs_dom_html_options_collection_set_selected_index ::
        JSRef HTMLOptionsCollection -> Int -> IO ()
#else 
ghcjs_dom_html_options_collection_set_selected_index ::
                                                       JSRef HTMLOptionsCollection -> Int -> IO ()
ghcjs_dom_html_options_collection_set_selected_index = undefined
#endif
 
htmlOptionsCollectionSetSelectedIndex ::
                                      (IsHTMLOptionsCollection self) => self -> Int -> IO ()
htmlOptionsCollectionSetSelectedIndex self val
  = ghcjs_dom_html_options_collection_set_selected_index
      (unHTMLOptionsCollection (toHTMLOptionsCollection self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_html_options_collection_get_selected_index ::
        JSRef HTMLOptionsCollection -> IO Int
#else 
ghcjs_dom_html_options_collection_get_selected_index ::
                                                       JSRef HTMLOptionsCollection -> IO Int
ghcjs_dom_html_options_collection_get_selected_index = undefined
#endif
 
htmlOptionsCollectionGetSelectedIndex ::
                                      (IsHTMLOptionsCollection self) => self -> IO Int
htmlOptionsCollectionGetSelectedIndex self
  = ghcjs_dom_html_options_collection_get_selected_index
      (unHTMLOptionsCollection (toHTMLOptionsCollection self))
#else
module GHCJS.DOM.HTMLOptionsCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
#endif