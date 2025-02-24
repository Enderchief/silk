//// A frame is a window whose size and position can (usually) be changed by the user.
////
//// It usually has thick borders and a title bar, and can optionally contain a menu
//// bar, toolbar and status bar. A frame can contain any window that is not a frame or
//// dialog.
////
//// Derived from [`WxTopLevelWindow`](toplevelwindow.html#WxTopLevelWindow) [`WxWindow`](window.html#WxWindow) [`WxEvtHandler`](evthandler.html#WxEvtHandler)

import silk/types.{type OkT}
import silk/window.{type WxWindow}

pub type WxFrame =
  WxWindow(types.WxFrame)

pub type Option {
  Pos(#(Int, Int))
  Size(#(Int, Int))
  Style(Int)
}

/// Equivalent to `create(this, parent, id, title, [])`.
@external(erlang, "wxFrame", "create")
pub fn create(
  this: WxFrame,
  parent: WxWindow(win),
  id: Int,
  title: String,
) -> Bool

/// Used in two-step frame construction.
@external(erlang, "wxFrame", "create")
pub fn create5(
  this: WxFrame,
  parent: WxWindow(win),
  id: Int,
  title: String,
  options: List(Option),
) -> Bool

// /// Equivalent to `create_status_bar(this, [])`.
// @external(erlang, "wxFrame", "createStatusBar")
// pub fn create_status_bar(this: WxFrame) -> OkT

// /// Creates a status bar at the bottom of the frame.
// @external(erlang, "wxFrame", "createStatusBar")
// pub fn create_status_bar/2( -> OkT

// /// Equivalent to `create_tool_bar(this, [])`.
// @external(erlang, "wxFrame", "createToolBar")
// pub fn create_tool_bar(this: WxFrame) -> OkT

// /// Creates a toolbar at the top or left of the frame.
// @external(erlang, "wxFrame", "createToolBar")
// pub fn create_tool_bar/2( -> OkT
/// Destroys the object
@external(erlang, "wxFrame", "destroy")
pub fn destroy(this: WxFrame) -> OkT

/// Returns the origin of the frame client area (in client coordinates).
@external(erlang, "wxFrame", "getClientAreaOrigin")
pub fn get_client_area_origin(this: WxFrame) -> #(Int, Int)

// /// Returns a pointer to the menubar currently associated with the frame (if any).
// @external(erlang, "wxFrame", "getMenuBar")
// pub fn get_menu_bar(this: WxFrame) -> OkT
// /// Returns a pointer to the status bar currently associated with the frame (if any).
// @external(erlang, "wxFrame", "getStatusBar")
// pub fn get_status_bar(this: WxFrame) -> OkT
// /// Returns the status bar pane used to display menu and toolbar help.
// @external(erlang, "wxFrame", "getStatusBarPane")
// pub fn get_status_bar_pane(this: WxFrame) -> OkT
// /// Returns a pointer to the toolbar currently associated with the frame (if any).
// @external(erlang, "wxFrame", "getToolBar")
// pub fn get_tool_bar(this: WxFrame) -> OkT
/// Default constructor.
@external(erlang, "wxFrame", "new")
pub fn new() -> WxFrame

/// Equivalent to `new(parent, id, title, [])`.
@external(erlang, "wxFrame", "new")
pub fn new3(parent: WxWindow(win), id: Int, title: String) -> WxFrame

/// Constructor, creating the window.
@external(erlang, "wxFrame", "new")
pub fn new4(
  parent: WxWindow(win),
  id: Int,
  title: String,
  options: List(Option),
) -> WxFrame

/// Simulate a menu command.
@external(erlang, "wxFrame", "processCommand")
pub fn process_command(this: WxFrame, id: Int) -> Bool

/// Equivalent to `send_size_event(this, [])`.
@external(erlang, "wxFrame", "sendSizeEvent")
pub fn send_size_event(this: WxFrame) -> OkT

// /// This function sends a dummy `wxSizeEvent` to the window allowing it to re-layout its children positions.
// @external(erlang, "wxFrame", "sendSizeEvent/2")
// pub fn send_size_event/2( -> OkT
// /// Tells the frame to show the given menu bar.
// @external(erlang, "wxFrame", "setMenuBar")
// pub fn set_menu_bar(this: WxFrame, menubar) -> OkT
// /// Set the status bar pane used to display menu and toolbar help.
// @external(erlang, "wxFrame", "setStatusBar")
// pub fn set_status_bar(this: WxFrame, statusbar) -> OkT
// /// Set the status bar pane used to display menu and toolbar help.
// @external(erlang, "wxFrame", "setStatusBarPane")
// pub fn set_status_bar_pane(this: WxFrame, n) -> OkT
/// Equivalent to `set_status_text(this, text, [])`.
@external(erlang, "wxFrame", "setStatusText")
pub fn set_status_text(this: WxFrame, text: String) -> OkT

// /// Sets the status bar text and updates the status bar display.
// @external(erlang, "wxFrame", "setStatusText")
// pub fn set_status_text/3( -> OkT
/// Sets the widths of the fields in the status bar.
@external(erlang, "wxFrame", "setStatusWidths")
pub fn set_status_widths(this: WxFrame, widths_field: List(Int)) -> OkT
// /// Associates a toolbar with the frame.
// @external(erlang, "wxFrame", "setToolBar")
// pub fn set_tool_bar(this: WxFrame, toolbar) -> OkT
