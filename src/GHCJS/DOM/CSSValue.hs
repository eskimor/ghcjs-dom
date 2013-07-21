{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSValue
       (cCSS_INHERIT, cCSS_PRIMITIVE_VALUE, cCSS_VALUE_LIST, cCSS_CUSTOM,
        ghcjs_dom_css_value_set_css_text, cssValueSetCssText,
        ghcjs_dom_css_value_get_css_text, cssValueGetCssText,
        ghcjs_dom_css_value_get_css_value_type, cssValueGetCssValueType)
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

cCSS_INHERIT = 0
cCSS_PRIMITIVE_VALUE = 1
cCSS_VALUE_LIST = 2
cCSS_CUSTOM = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        ghcjs_dom_css_value_set_css_text ::
        JSRef CSSValue -> JSString -> IO ()
#else 
ghcjs_dom_css_value_set_css_text ::
                                   JSRef CSSValue -> JSString -> IO ()
ghcjs_dom_css_value_set_css_text = undefined
#endif
 
cssValueSetCssText ::
                   (IsCSSValue self, ToJSString val) => self -> val -> IO ()
cssValueSetCssText self val
  = ghcjs_dom_css_value_set_css_text (unCSSValue (toCSSValue self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"]"
        ghcjs_dom_css_value_get_css_text :: JSRef CSSValue -> IO JSString
#else 
ghcjs_dom_css_value_get_css_text :: JSRef CSSValue -> IO JSString
ghcjs_dom_css_value_get_css_text = undefined
#endif
 
cssValueGetCssText ::
                   (IsCSSValue self, FromJSString result) => self -> IO result
cssValueGetCssText self
  = fromJSString <$>
      (ghcjs_dom_css_value_get_css_text (unCSSValue (toCSSValue self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssValueType\"]"
        ghcjs_dom_css_value_get_css_value_type :: JSRef CSSValue -> IO Word
#else 
ghcjs_dom_css_value_get_css_value_type :: JSRef CSSValue -> IO Word
ghcjs_dom_css_value_get_css_value_type = undefined
#endif
 
cssValueGetCssValueType :: (IsCSSValue self) => self -> IO Word
cssValueGetCssValueType self
  = ghcjs_dom_css_value_get_css_value_type
      (unCSSValue (toCSSValue self))
#else
module GHCJS.DOM.CSSValue (
  module Graphics.UI.Gtk.WebKit.DOM.CSSValue
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSValue
#endif