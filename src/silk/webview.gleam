import silk/types
import silk/window.{type WxWindow}

pub type WxWebView =
  WxWindow(types.WxControl(types.WxWebView))

type Res =
  Result(Nil, Nil)

/// Returns true if the current selection can be copied.
@external(erlang, "wxWebView", "canCopy")
pub fn can_copy(this: WxWebView) -> Bool

/// Returns true if the current selection can be cut.
@external(erlang, "wxWebView", "canCut")
pub fn can_cut(this: WxWebView) -> Bool

/// Returns true if it is possible to navigate backward in the history of visited pages.
@external(erlang, "wxWebView", "canGoBack")
pub fn can_go_back(this: WxWebView) -> Bool

/// Returns true if it is possible to navigate forward in the history of visited pages.
@external(erlang, "wxWebView", "canGoForward")
pub fn can_go_forward(this: WxWebView) -> Bool

/// Returns true if data can be pasted.
@external(erlang, "wxWebView", "canPaste")
pub fn can_paste(this: WxWebView) -> Bool

/// Returns true if there is an action to redo.
@external(erlang, "wxWebView", "canRedo")
pub fn can_redo(this: WxWebView) -> Bool

// /// Retrieve whether the current HTML engine supports a zoom type.
// ///
// /// Return: Whether this type of zoom is supported by this HTML engine (and thus can be set through `setZoomType2`).
// @external(erlang, "wxWebView", "canSetZoomType")
// pub fn can_set_zoom_type(this: WxWebView, type) -> Bool

/// Returns true if there is an action to undo.
@external(erlang, "wxWebView", "canUndo")
pub fn can_undo(this: WxWebView) -> Bool

/// Clear the history, this will also remove the visible page.
@external(erlang, "wxWebView", "clearHistory")
pub fn clear_history(this: WxWebView) -> Res

/// Clears the current selection.
@external(erlang, "wxWebView", "clearSelection")
pub fn clear_selection(this: WxWebView) -> Res

/// Copies the current selection.
@external(erlang, "wxWebView", "copy")
pub fn copy(this: WxWebView) -> Res

/// Cuts the current selection.
@external(erlang, "wxWebView", "cut")
pub fn cut(this: WxWebView) -> Res

/// Deletes the current selection.
@external(erlang, "wxWebView", "deleteSelection")
pub fn delete_selection(this: WxWebView) -> Res

// @external(erlang, "wxWebView", "enableContextMenu")
// pub fn enable_context_menu(this: WxWebView) -> Res

// @external(erlang, "wxWebView", "enableContextMenu/2")
// pub fn enable_context_menu2(this: WxWebView) -> Res

// @external(erlang, "wxWebView", "enableHistory")
// pub fn enable_history(this: WxWebView) -> Res

// @external(erlang, "wxWebView", "enableHistory/2")
// pub fn enable_history/2( -> Res

// @external(erlang, "wxWebView", "find")
// pub fn find(this: WxWebView, text) -> Res

// @external(erlang, "wxWebView", "find/3")
// pub fn find/3( -> Res

/// Get the title of the current web page, or its URL/path if title is not available.
@external(erlang, "wxWebView", "getCurrentTitle")
pub fn get_current_title(this: WxWebView) -> String

/// Get the URL of the currently displayed document.
@external(erlang, "wxWebView", "getCurrentURL")
pub fn get_current_url(this: WxWebView) -> String

/// Get the HTML source code of the currently displayed document.
///
/// Return: The HTML source code, or an empty string if no page is currently shown.
@external(erlang, "wxWebView", "getPageSource")
pub fn get_page_source(this: WxWebView) -> String

/// Get the text of the current page.
@external(erlang, "wxWebView", "getPageText")
pub fn get_page_text(this: WxWebView) -> String

/// Returns the currently selected source, if any.
@external(erlang, "wxWebView", "getSelectedSource")
pub fn get_selected_source(this: WxWebView) -> String

/// Returns the currently selected text, if any.
@external(erlang, "wxWebView", "getSelectedText")
pub fn get_selected_text(this: WxWebView) -> String

// /// Get the zoom level of the page.
// ///
// /// See `getZoomFactor` to get more precise zoom scale value other than as provided by wxWebViewZoom.
// @external(erlang, "wxWebView", "getZoom")
// pub fn get_zoom(this: WxWebView) -> Res

// /// Get the zoom factor of the page.
// ///
// /// Return: The current factor of zoom.
// @external(erlang, "wxWebView", "getZoomFactor")
// pub fn get_zoom_factor(this: WxWebView) -> Res

// /// Get how the zoom factor is currently interpreted.
// ///
// /// Return: How the zoom factor is currently interpreted by the HTML engine.
// @external(erlang, "wxWebView", "getZoomType")
// pub fn get_zoom_type(this: WxWebView) -> Res

/// Navigate back in the history of visited pages.
///
/// Only valid if `can_go_back` returns true.
@external(erlang, "wxWebView", "goBack")
pub fn go_back(this: WxWebView) -> Res

/// Navigate forward in the history of visited pages.
///
/// Only valid if `can_go_forward` returns true.
@external(erlang, "wxWebView", "goForward")
pub fn go_forward(this: WxWebView) -> Res

/// Returns true if there is a current selection.
@external(erlang, "wxWebView", "hasSelection")
pub fn has_selection(this: WxWebView) -> Bool

/// Allows to check if a specific backend is currently available.
@external(erlang, "wxWebView", "isBackendAvailable")
pub fn is_backend_available(backend: String) -> Bool

/// Returns whether the web control is currently busy (e.g. loading a page).
@external(erlang, "wxWebView", "isBusy")
pub fn is_busy(this: WxWebView) -> Bool

/// Returns true if a context menu will be shown on right click.
@external(erlang, "wxWebView", "isContextMenuEnabled")
pub fn is_context_menu_enabled(this: WxWebView) -> Bool

/// Returns whether the web control is currently editable.
@external(erlang, "wxWebView", "isEditable")
pub fn is_editable(this: WxWebView) -> Bool

/// Load a web page from a URL.
///
/// Note: Web engines generally report errors asynchronously, so if
/// you wish to know whether loading the URL was successful,
/// register to receive navigation error events.
@external(erlang, "wxWebView", "loadURL")
pub fn load_url(this: WxWebView, url: String) -> Res

/// Equivalent to `new3(Parent, Id, [])`.
@external(erlang, "wxWebView", "new")
pub fn new(parent: WxWindow(win), id: Int) -> WxWebView

pub type Option {
  Url(String)
  Pos(#(Int, Int))
  Size(#(Int, Int))
  Backend(String)
  Style(Int)
}

/// Factory function to create a new `WxWebView` using a `wxWebViewFactory` (not implemented in wx).
///
/// Return: The created `WxWebView`, or NULL if the requested backend is not available
@external(erlang, "wxWebView", "new")
pub fn new3(parent: WxWindow(win), id: Int, options: List(Option)) -> WxWebView

/// Pastes the current data.
@external(erlang, "wxWebView", "paste")
pub fn paste(this: WxWebView) -> Res

/// Opens a print dialog so that the user may print the currently displayed page.
@external(erlang, "wxWebView", "print")
pub fn print(this: WxWebView) -> Res

/// Redos the last action.
@external(erlang, "wxWebView", "redo")
pub fn redo(this: WxWebView) -> Res

/// Equivalent to `reload2(This, [])`.
@external(erlang, "wxWebView", "reload")
pub fn reload(this: WxWebView) -> Res

/// Reload the currently displayed URL.
@external(erlang, "wxWebView", "reload")
pub fn reload2(this: WxWebView) -> Res

/// Runs the given JavaScript code.
///
/// JavaScript code is executed inside the browser control and has full access to DOM and other browser-provided functionality. For example, this code will replace the current page contents with the provided string.
///
/// If `output` is non-null, it is filled with the result of executing this code on success, e.g. a JavaScript value such as a string, a number (integer or floating point), a boolean or JSON representation for non-primitive types such as arrays and objects. For example:
///
/// This function has a few platform-specific limitations:
/// - When using WebKit v1 in wxGTK2, retrieving the result of JavaScript execution is unsupported and this function will always return false if output is non-null to indicate this. This functionality is fully supported when using WebKit v2 or later in wxGTK3.
/// - When using WebKit under macOS, code execution is limited to at most 10MiB of memory and 10 seconds of execution time.
/// - When using IE backend under MSW, scripts can only be executed when the current page is fully loaded (i.e. wxEVT_WEBVIEW_LOADED event was received). A script tag inside the page HTML is required in order to run JavaScript.
///
/// Also notice that under MSW converting JavaScript objects to JSON is not supported in the default emulation mode. wxWebView implements its own object-to-JSON conversion as a fallback for this case, however it is not as full-featured, well-tested or performing as the implementation of this functionality in the browser control itself, so it is recommended to use MSWSetEmulationLevel() to change emulation level to a more modern one in which JSON conversion is done by the control itself.
///
/// Return: true if there is a result, false if there is an error.
@external(erlang, "wxWebView", "runScript")
pub fn run_script(this: WxWebView, javascript: String) -> Result(Bool, String)

/// Selects the entire page.
@external(erlang, "wxWebView", "selectAll")
pub fn select_all(this: WxWebView) -> Res

/// Equivalent to `setEditable2(This, [])`.
@external(erlang, "wxWebView", "setEditable")
pub fn set_editable(this: WxWebView) -> Res

pub type EditableOption {
  Enable(Bool)
}

/// Set the editable property of the web control.
///
/// Enabling allows the user to edit the page even if the contenteditable attribute is not set. The exact capabilities vary with the backend being used.
@external(erlang, "wxWebView", "setEditable")
pub fn set_editable2(this: WxWebView, option: EditableOption) -> Res

/// Set the displayed page source to the contents of the given string.
///
/// Note: When using wxWEBVIEW_BACKEND_IE you must wait for the current page to finish loading before calling setPage/3. The baseURL parameter is not used in this backend and the edge backend.
@external(erlang, "wxWebView", "setPage")
pub fn set_page(this: WxWebView, html: String, baseurl: String) -> Res

// /// Set the zoom level of the page.
// ///
// /// See setZoomFactor/2 for more precise scaling other than the measured steps provided by wxWebViewZoom.
// @external(erlang, "wxWebView", "setZoom")
// pub fn set_zoom(this: WxWebView, zoom) -> Res
// /// Set the zoom factor of the page.
// ///
// /// Note: zoom scale in IE will be converted into wxWebViewZoom levels for wxWebViewZoomType of wxWEBVIEW_ZOOM_TYPE_TEXT.
// @external(erlang, "wxWebView", "setZoomFactor")
// pub fn set_zoom_factor(this: WxWebView, zoom) -> Res
// /// Set how to interpret the zoom factor.
// ///
// /// Note: invoke canSetZoomType/2 first, some HTML renderers may not support all zoom types.
// @external(erlang, "wxWebView", "setZoomType")
// pub fn set_zoom_type(this: WxWebView, zoomtype) -> Res

/// Stop the current page loading process, if any.
///
/// May trigger an error event of type wxWEBVIEW_NAV_ERR_USER_CANCELLED. TODO: make wxWEBVIEW_NAV_ERR_USER_CANCELLED errors uniform across ports.
@external(erlang, "wxWebView", "stop")
pub fn stop(this: WxWebView) -> Res

/// Undos the last action.
@external(erlang, "wxWebView", "undo")
pub fn undo(this: WxWebView) -> Res
