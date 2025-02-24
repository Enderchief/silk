//// wxWindow is the base class for all windows and represents any
//// visible object on screen.
////
//// All controls, top level windows and so on are windows. Sizers
//// and device contexts are not, however, as they don't appear on
//// screen themselves.
////
//// Please note that all children of the window will be deleted
//// automatically by the destructor before the window itself is
//// deleted which means that you don't have to worry about deleting
//// them manually. Please see the window deletion overview for more
//// information.
////
//// Also note that in this, and many others, wxWidgets classes some
//// `GetXXX()` methods may be overloaded (as, for example, `getSize`
//// or `getClientSize`). In this case, the overloads are non-virtual
//// because having multiple virtual functions with the same name
//// results in a virtual function name hiding at the derived class
//// level (in English, this means that the derived class has to
//// override all overloaded variants if it overrides any of them).
//// To allow overriding them in the derived class, wxWidgets uses a
//// //// unique protected virtual `DoGetXXX()` method and all
//// `GetXXX()` ones are forwarded to it, so overriding the former
//// changes the behaviour of the latter.
////
//// Derived from [`WxEvtHandler`](wxevthandler.html#WxEvtHandler)

import silk/sizer
import silk/types
import silk/wx.{type WxColour}

pub type WxWindow(win) =
  types.WxObject(types.WxWindow(win))

type Ret =
  Result(Nil, Nil)

/// Sets the cached best size value.
@external(erlang, "wxWindow", "cacheBestSize")
pub fn cache_best_size(this: WxWindow(win), size: #(Int, Int)) -> Ret

/// Returns true if the system supports transparent windows and calling setTransparent/2 may succeed.
@external(erlang, "wxWindow", "canSetTransparent")
pub fn can_set_transparent(this: WxWindow(win)) -> Bool

/// Directs all mouse input to this window.
@external(erlang, "wxWindow", "captureMouse")
pub fn capture_mouse(this: WxWindow(win)) -> Ret

/// Equivalent to `center2(this, [])`.
@external(erlang, "wxWindow", "center")
pub fn center(this: WxWindow(win)) -> Ret

// /// Equivalent to: `centre2`
// @external(erlang, "wxWindow", "center")
// pub fn center(this: WxWindow(win), options) -> Nil

/// Equivalent to: `center_on_parent2(this, [])`
@external(erlang, "wxWindow", "centerOnParent")
pub fn center_on_parent(this: WxWindow(win)) -> Ret

// /// Centres the window.
// @external(erlang, "wxWindow", "centerOnParent")
// pub fn centerOnParent(this: WxWindow(win), options) -> Nil
/// Centres the window.
@external(erlang, "wxWindow", "centre")
pub fn centre(this: WxWindow(win)) -> Ret

// @external(erlang, "wxWindow", "centre/2")
// pub fn centre/2(undefined -> Nil

/// Equivalent to `centre_on_parent(this, [])`.
@external(erlang, "wxWindow", "centreOnParent")
pub fn centre_on_parent(this: WxWindow(win)) -> Ret

// @external(erlang, "wxWindow", "centreOnParent/2")
// pub fn centreOnParent/2(undefined -> Nil

// @external(erlang, "wxWindow", "clearBackground")
// pub fn clearBackground(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "clientToScreen")
// pub fn clientToScreen(this: WxWindow(win), Pt) -> Nil
/// Converts to screen coordinates from coordinates relative to this window.
@external(erlang, "wxWindow", "clientToScreen")
pub fn client_to_screen(this: WxWindow(win), x: int, y: int) -> #(Int, Int)

/// Equivalent to close2(This, []).
@external(erlang, "wxWindow", "close")
pub fn close(this: WxWindow(win)) -> Bool

pub type CloseOption {
  Force(Bool)
}

/// This function simply generates a `wxCloseEvent` whose handler usually tries to close the window.
@external(erlang, "wxWindow", "close")
pub fn close2(this: WxWindow(win), options: List(CloseOption)) -> Bool

// @external(erlang, "wxWindow", "convertDialogToPixels")
// pub fn convertDialogToPixels(this: WxWindow(win), Sz) -> Nil

// @external(erlang, "wxWindow", "convertPixelsToDialog")
// pub fn convertPixelsToDialog(this: WxWindow(win), Sz) -> Nil

@external(erlang, "wxWindow", "create")
pub fn create(this: WxWindow(win), parent: WxWindow(win), id: Int) -> Bool

// @external(erlang, "wxWindow", "create/4")
// pub fn create/4(undefined -> Nil

// @external(erlang, "wxWindow", "'Destroy'")
// pub fn 'Destroy'(this: WxWindow(win)) -> Nil

@external(erlang, "wxWindow", "destroy")
pub fn destroy(this: WxWindow(win)) -> Ret

@external(erlang, "wxWindow", "destroyChildren")
pub fn destroy_children(this: WxWindow(win)) -> Bool

@external(erlang, "wxWindow", "disable")
pub fn disable(this: WxWindow(win)) -> Bool

// @external(erlang, "wxWindow", "dragAcceptFiles")
// pub fn dragAcceptFiles(this: WxWindow(win), Accept) -> Nil

// @external(erlang, "wxWindow", "enable")
// pub fn enable(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "enable/2")
// pub fn enable/2(undefined -> Nil

// @external(erlang, "wxWindow", "findFocus")
// pub fn findFocus() -> Nil

// @external(erlang, "wxWindow", "findWindow/2")
// pub fn findWindow/2(undefined -> Nil

// @external(erlang, "wxWindow", "findWindowById")
// pub fn findWindowById(Id) -> Nil

// @external(erlang, "wxWindow", "findWindowById")
// pub fn findWindowById(Id, options) -> Nil

// @external(erlang, "wxWindow", "findWindowByLabel")
// pub fn findWindowByLabel(Label) -> Nil

// @external(erlang, "wxWindow", "findWindowByLabel")
// pub fn findWindowByLabel(Label, options) -> Nil

// @external(erlang, "wxWindow", "findWindowByName")
// pub fn findWindowByName(Name) -> Nil

// @external(erlang, "wxWindow", "findWindowByName")
// pub fn findWindowByName(Name, options) -> Nil

@external(erlang, "wxWindow", "fit")
pub fn fit(this: WxWindow(win)) -> Ret

@external(erlang, "wxWindow", "fitInside")
pub fn fit_inside(this: WxWindow(win)) -> Ret

// @external(erlang, "wxWindow", "freeze")
// pub fn freeze(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "fromDIP/2")
// pub fn fromDIP/2(undefined -> Nil

// @external(erlang, "wxWindow", "getAcceleratorTable")
// pub fn getAcceleratorTable(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getBackgroundColour")
// pub fn getBackgroundColour(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getBackgroundStyle")
// pub fn getBackgroundStyle(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getBestSize")
// pub fn getBestSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getCapture")
// pub fn getCapture() -> Nil

// @external(erlang, "wxWindow", "getCaret")
// pub fn getCaret(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getCharHeight")
// pub fn getCharHeight(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getCharWidth")
// pub fn getCharWidth(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getChildren")
// pub fn getChildren(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getClientSize")
// pub fn getClientSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getContainingSizer")
// pub fn getContainingSizer(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getContentScaleFactor")
// pub fn getContentScaleFactor(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getCursor")
// pub fn getCursor(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getDPI")
// pub fn getDPI(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getDPIScaleFactor")
// pub fn getDPIScaleFactor(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getDropTarget")
// pub fn getDropTarget(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getExtraStyle")
// pub fn getExtraStyle(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getFont")
// pub fn getFont(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getForegroundColour")
// pub fn getForegroundColour(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getGrandParent")
// pub fn getGrandParent(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getHandle")
// pub fn getHandle(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getHelpText")
// pub fn getHelpText(this: WxWindow(win)) -> Nil

@external(erlang, "wxWindow", "getId")
pub fn get_id(this: WxWindow(win)) -> Int

// @external(erlang, "wxWindow", "getLabel")
// pub fn getLabel(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getMaxSize")
// pub fn getMaxSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getMinSize")
// pub fn getMinSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getName")
// pub fn getName(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getParent")
// pub fn getParent(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getPosition")
// pub fn getPosition(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getRect")
// pub fn getRect(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getScreenPosition")
// pub fn getScreenPosition(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getScreenRect")
// pub fn getScreenRect(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getScrollPos")
// pub fn getScrollPos(this: WxWindow(win), Orientation) -> Nil

// @external(erlang, "wxWindow", "getScrollRange")
// pub fn getScrollRange(this: WxWindow(win), Orientation) -> Nil

// @external(erlang, "wxWindow", "getScrollThumb")
// pub fn getScrollThumb(this: WxWindow(win), Orientation) -> Nil

// @external(erlang, "wxWindow", "getSize")
// pub fn getSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getSizer")
// pub fn getSizer(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getTextExtent")
// pub fn getTextExtent(this: WxWindow(win), String) -> Nil

// @external(erlang, "wxWindow", "getTextExtent/3")
// pub fn getTextExtent/3(undefined -> Nil

// @external(erlang, "wxWindow", "getThemeEnabled")
// pub fn getThemeEnabled(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getToolTip")
// pub fn getToolTip(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getUpdateRegion")
// pub fn getUpdateRegion(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getVirtualSize")
// pub fn getVirtualSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getWindowStyleFlag")
// pub fn getWindowStyleFlag(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "getWindowVariant")
// pub fn getWindowVariant(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "hasCapture")
// pub fn hasCapture(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "hasScrollbar")
// pub fn hasScrollbar(this: WxWindow(win), Orient) -> Nil

// @external(erlang, "wxWindow", "hasTransparentBackground")
// pub fn hasTransparentBackground(this: WxWindow(win)) -> Nil

@external(erlang, "wxWindow", "hide")
pub fn hide(this: WxWindow(win)) -> Ret

// @external(erlang, "wxWindow", "inheritAttributes")
// pub fn inheritAttributes(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "initDialog")
// pub fn initDialog(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "invalidateBestSize")
// pub fn invalidateBestSize(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isDoubleBuffered")
// pub fn isDoubleBuffered(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isEnabled")
// pub fn isEnabled(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isExposed/2")
// pub fn isExposed/2(undefined -> Nil

// @external(erlang, "wxWindow", "isExposed")
// pub fn isExposed(this: WxWindow(win), X, Y) -> Nil

// @external(erlang, "wxWindow", "isExposed")
// pub fn isExposed(this: WxWindow(win), X, Y, W, H) -> Nil

// @external(erlang, "wxWindow", "isFrozen")
// pub fn isFrozen(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isRetained")
// pub fn isRetained(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isShown")
// pub fn isShown(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isShownOnScreen")
// pub fn isShownOnScreen(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "isTopLevel")
// pub fn isTopLevel(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "layout")
// pub fn layout(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "lineDown")
// pub fn lineDown(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "lineUp")
// pub fn lineUp(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "lower")
// pub fn lower(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "move")
// pub fn move(this: WxWindow(win), Pt) -> Nil

// @external(erlang, "wxWindow", "move/3")
// pub fn move/3(undefined -> Nil

// @external(erlang, "wxWindow", "move/4")
// pub fn move/4(undefined -> Nil

// @external(erlang, "wxWindow", "moveAfterInTabOrder")
// pub fn moveAfterInTabOrder(this: WxWindow(win), Win) -> Nil

// @external(erlang, "wxWindow", "moveBeforeInTabOrder")
// pub fn moveBeforeInTabOrder(this: WxWindow(win), Win) -> Nil

// @external(erlang, "wxWindow", "navigate")
// pub fn navigate(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "navigate/2")
// pub fn navigate/2(undefined -> Nil

@external(erlang, "wxWindow", "new")
pub fn new() -> WxWindow(win)

@external(erlang, "wxWindow", "new")
pub fn new_2(parent: WxWindow(win), id: Int) -> WxWindow(win)

// @external(erlang, "wxWindow", "new/3")
// pub fn new/3(undefined -> Nil

// @external(erlang, "wxWindow", "pageDown")
// pub fn pageDown(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "pageUp")
// pub fn pageUp(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "popupMenu")
// pub fn popupMenu(this: WxWindow(win), Menu) -> Nil

// @external(erlang, "wxWindow", "popupMenu/3")
// pub fn popupMenu/3(undefined -> Nil

// @external(erlang, "wxWindow", "popupMenu")
// pub fn popupMenu(this: WxWindow(win), Menu, X, Y) -> Nil

// @external(erlang, "wxWindow", "raise")
// pub fn raise(this: WxWindow(win)) -> Nil

@external(erlang, "wxWindow", "refresh")
pub fn refresh(this: WxWindow(win)) -> Ret

// @external(erlang, "wxWindow", "refresh/2")
// pub fn refresh/2(undefined -> Nil

// @external(erlang, "wxWindow", "refreshRect")
// pub fn refreshRect(this: WxWindow(win), Rect) -> Nil

// @external(erlang, "wxWindow", "refreshRect/3")
// pub fn refreshRect/3(undefined -> Nil

// @external(erlang, "wxWindow", "releaseMouse")
// pub fn releaseMouse(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "removeChild")
// pub fn removeChild(this: WxWindow(win), Child) -> Nil

// @external(erlang, "wxWindow", "reparent")
// pub fn reparent(this: WxWindow(win), NewParent) -> Nil

// @external(erlang, "wxWindow", "screenToClient")
// pub fn screenToClient(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "screenToClient")
// pub fn screenToClient(this: WxWindow(win), Pt) -> Nil

// @external(erlang, "wxWindow", "scrollLines")
// pub fn scrollLines(this: WxWindow(win), Lines) -> Nil

// @external(erlang, "wxWindow", "scrollPages")
// pub fn scrollPages(this: WxWindow(win), Pages) -> Nil

// @external(erlang, "wxWindow", "scrollWindow")
// pub fn scrollWindow(this: WxWindow(win), Dx, Dy) -> Nil

// @external(erlang, "wxWindow", "scrollWindow/4")
// pub fn scrollWindow/4(undefined -> Nil

// @external(erlang, "wxWindow", "setAcceleratorTable")
// pub fn setAcceleratorTable(this: WxWindow(win), Accel) -> Nil

// @external(erlang, "wxWindow", "setAutoLayout")
// pub fn setAutoLayout(this: WxWindow(win), AutoLayout) -> Nil

@external(erlang, "wxWindow", "setBackgroundColour")
pub fn set_background_colour(this: WxWindow(win), colour: WxColour) -> Bool

// @external(erlang, "wxWindow", "setBackgroundStyle")
// pub fn set_background_style(this: WxWindow(win), style: WxEnum) -> Nil

// @external(erlang, "wxWindow", "setCaret")
// pub fn setCaret(this: WxWindow(win), Caret) -> Nil

// @external(erlang, "wxWindow", "setClientSize/2")
// pub fn setClientSize/2(undefined -> Nil

@external(erlang, "wxWindow", "setClientSize")
pub fn set_client_size(this: WxWindow(win), width: Int, height: Int) -> Ret

// @external(erlang, "wxWindow", "setContainingSizer")
// pub fn setContainingSizer(this: WxWindow(win), Sizer) -> Nil

// @external(erlang, "wxWindow", "setCursor")
// pub fn setCursor(this: WxWindow(win), Cursor) -> Nil

// @external(erlang, "wxWindow", "setDoubleBuffered")
// pub fn setDoubleBuffered(this: WxWindow(win), On) -> Nil

// @external(erlang, "wxWindow", "setDropTarget")
// pub fn setDropTarget(this: WxWindow(win), Target) -> Nil

// @external(erlang, "wxWindow", "setExtraStyle")
// pub fn setExtraStyle(this: WxWindow(win), ExStyle) -> Nil

// @external(erlang, "wxWindow", "setFocus")
// pub fn setFocus(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "setFocusFromKbd")
// pub fn setFocusFromKbd(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "setFont")
// pub fn setFont(this: WxWindow(win), Font) -> Nil

@external(erlang, "wxWindow", "setForegroundColour")
pub fn set_foreground_colour(this: WxWindow(win), colour: WxColour) -> Ret

@external(erlang, "wxWindow", "setHelpText")
pub fn set_help_text(this: WxWindow(win), help_text: String) -> Ret

@external(erlang, "wxWindow", "setId")
pub fn set_id(this: WxWindow(win), winid: Int) -> Ret

@external(erlang, "wxWindow", "setLabel")
pub fn set_label(this: WxWindow(win), label: String) -> Nil

// @external(erlang, "wxWindow", "setMaxSize")
// pub fn setMaxSize(this: WxWindow(win), Size) -> Nil

// @external(erlang, "wxWindow", "setMinSize")
// pub fn setMinSize(this: WxWindow(win), Size) -> Nil

@external(erlang, "wxWindow", "setName")
pub fn set_name(this: WxWindow(win), name: String) -> Nil

// @external(erlang, "wxWindow", "setOwnBackgroundColour")
// pub fn setOwnBackgroundColour(this: WxWindow(win), Colour) -> Nil

// @external(erlang, "wxWindow", "setOwnFont")
// pub fn setOwnFont(this: WxWindow(win), Font) -> Nil

// @external(erlang, "wxWindow", "setOwnForegroundColour")
// pub fn setOwnForegroundColour(this: WxWindow(win), Colour) -> Nil

// @external(erlang, "wxWindow", "setPalette")
// pub fn setPalette(this: WxWindow(win), Pal) -> Nil

// @external(erlang, "wxWindow", "setScrollbar")
// pub fn setScrollbar(this: WxWindow(win), Orientation, Position, ThumbSize, Range) -> Nil

// @external(erlang, "wxWindow", "setScrollbar/6")
// pub fn setScrollbar/6(undefined -> Nil

// @external(erlang, "wxWindow", "setScrollPos")
// pub fn setScrollPos(this: WxWindow(win), Orientation, Pos) -> Nil

// @external(erlang, "wxWindow", "setScrollPos/4")
// pub fn setScrollPos/4(undefined -> Nil

// @external(erlang, "wxWindow", "setSize/2")
// pub fn setSize/2(undefined -> Nil

@external(erlang, "wxWindow", "setSize/3")
pub fn set_size(this: WxWindow(win), width: Int, height: Int) -> Ret

@external(erlang, "wxWindow", "setSize")
pub fn set_size_pos(
  this: WxWindow(win),
  x: Int,
  y: Int,
  width: Int,
  height: Int,
) -> Ret

// @external(erlang, "wxWindow", "setSize/6")
// pub fn setSize/6(undefined -> Nil

// @external(erlang, "wxWindow", "setSizeHints")
// pub fn setSizeHints(this: WxWindow(win), MinSize) -> Nil

// @external(erlang, "wxWindow", "setSizeHints/3")
// pub fn setSizeHints/3(undefined -> Nil

// @external(erlang, "wxWindow", "setSizeHints/4")
// pub fn setSizeHints/4(undefined -> Nil

/// Sets the window to have the given layout sizer.
///
/// The window will then own the object, and will take care of its deletion. If an existing layout constraints object is already owned by the window, it will be deleted if the deleteOld parameter is true.
///
/// Note that this function will also call setAutoLayout/2 implicitly with true parameter if the sizer is non-NULL and false otherwise so that the sizer will be effectively used to layout the window children whenever it is resized.
///
/// Remark: SetSizer enables and disables Layout automatically.
@external(erlang, "wxWindow", "setSizer")
pub fn set_sizer(this: WxWindow(win), sizer: sizer.WxSizer(sizer)) -> Nil

// @external(erlang, "wxWindow", "setSizer/3")
// pub fn setSizer/3(undefined -> Nil

// @external(erlang, "wxWindow", "setSizerAndFit")
// pub fn setSizerAndFit(this: WxWindow(win), Sizer) -> Nil

// @external(erlang, "wxWindow", "setSizerAndFit/3")
// pub fn setSizerAndFit/3(undefined -> Nil

// @external(erlang, "wxWindow", "setThemeEnabled")
// pub fn setThemeEnabled(this: WxWindow(win), Enable) -> Nil

// @external(erlang, "wxWindow", "setToolTip/2")
// pub fn setToolTip/2(undefined -> Nil

// @external(erlang, "wxWindow", "setTransparent")
// pub fn setTransparent(this: WxWindow(win), Alpha) -> Nil

// @external(erlang, "wxWindow", "setVirtualSize")
// pub fn setVirtualSize(this: WxWindow(win), Size) -> Nil

// @external(erlang, "wxWindow", "setVirtualSize")
// pub fn setVirtualSize(this: WxWindow(win), Width, Height) -> Nil

// @external(erlang, "wxWindow", "setWindowStyle")
// pub fn setWindowStyle(this: WxWindow(win), Style) -> Nil

// @external(erlang, "wxWindow", "setWindowStyleFlag")
// pub fn setWindowStyleFlag(this: WxWindow(win), Style) -> Nil

// @external(erlang, "wxWindow", "setWindowVariant")
// pub fn setWindowVariant(this: WxWindow(win), Variant) -> Nil

// @external(erlang, "wxWindow", "shouldInheritColours")
// pub fn shouldInheritColours(this: WxWindow(win)) -> Nil

@external(erlang, "wxWindow", "show")
pub fn show(this: WxWindow(win)) -> Bool

// @external(erlang, "wxWindow", "show/2")
// pub fn show/2(undefined -> Nil

// @external(erlang, "wxWindow", "thaw")
// pub fn thaw(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "toDIP/2")
// pub fn toDIP/2(undefined -> Nil

// @external(erlang, "wxWindow", "transferDataFromWindow")
// pub fn transferDataFromWindow(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "transferDataToWindow")
// pub fn transferDataToWindow(this: WxWindow(win)) -> Nil

@external(erlang, "wxWindow", "update")
pub fn update(this: WxWindow(win)) -> Ret
// @external(erlang, "wxWindow", "updateWindowUI")
// pub fn updateWindowUI(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "updateWindowUI/2")
// pub fn update_window_ui/2(undefined -> Nil

// @external(erlang, "wxWindow", "validate")
// pub fn validate(this: WxWindow(win)) -> Nil

// @external(erlang, "wxWindow", "warpPointer")
// pub fn warp_pointer(this: WxWindow(win), x, y) -> Nil
