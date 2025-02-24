//// A static text control displays one or more lines of read-only text.
////
//// wxStaticText supports the three classic text alignments, label
//// ellipsization i.e. replacing parts of the text with the ellipsis
//// ("...") if the label doesn't fit into the provided space and also
//// formatting markup with wxControl::SetLabelMarkup() (not
//// implemented in wx).
////
//// Derived from [`WxControl`](window.html#WxControl),
//// [`WxWindow`](evthandler.html#WxWindow),
//// [`WxEvtHandler`](evthandler.html#WxEvtHandler)

import silk/control
import silk/types
import silk/window

pub type WxStaticText =
  control.WxControl(types.WxStaticText)

/// Equivalent to `create(this, parent, id, label, [])`
@external(erlang, "wxStaticText", "create")
pub fn create(
  this: WxStaticText,
  parent: window.WxWindow(a),
  id: Int,
  label: String,
) -> WxStaticText

pub type Option {
  Pos(#(Int, Int))
  Size(#(Int, Int))
  Style(Int)
}

/// Create function, for two-step construction.
@external(erlang, "wxStaticText", "create")
pub fn create5(
  this: WxStaticText,
  parent: window.WxWindow(a),
  id: Int,
  label: String,
  option: List(Option),
) -> WxStaticText

/// Destroys the object
@external(erlang, "wxStaticText", "destroy")
pub fn destroy(this: WxStaticText) -> types.OkT

/// Returns the control's label, as it was passed to wxControl:setLabel/2.
///
/// Note that the returned string may contains mnemonics ("&" characters) if
/// they were passed to the wxControl:setLabel/2 function; use GetLabelText()
/// (not implemented in wx) if they are undesired.
///
/// Also note that the returned string is always the string which was passed to
/// wxControl:setLabel/2 but may be different from the string passed to
/// SetLabelText() (not implemented in wx) (since this last one escapes mnemonic
/// characters).
@external(erlang, "wxStaticText", "getLabel")
pub fn get_label(this: WxStaticText) -> String

/// Default constructor.
@external(erlang, "wxStaticText", "new")
pub fn new() -> WxStaticText

/// Equivalent to `new(parent, id, label, [])`
@external(erlang, "wxStaticText", "new")
pub fn new3(parent: window.WxWindow(a), id: Int, label: String) -> WxStaticText

/// Constructor, creating and showing a text control.
///
/// See `create`
@external(erlang, "wxStaticText", "new")
pub fn new4(
  parent: window.WxWindow(a),
  id: Int,
  label: String,
  option: List(Option),
) -> WxStaticText

/// Change the label shown in the control.
///
/// Notice that since wxWidgets 3.1.1 this function is guaranteed not to do
/// anything if the label didn't really change, so there is no benefit to
/// checking if the new label is different from the current one in the
/// application code.
///
/// See: `wxControl:setLabel/2`
@external(erlang, "wxStaticText", "setLabel")
pub fn set_label(this: WxStaticText, label: String) -> types.OkT

/// This functions wraps the controls label so that each of its lines becomes at
/// most width pixels wide if possible (the lines are broken at words boundaries
/// so it might not be the case if words are too long).
///
/// If width is negative, no wrapping is done. Note that this width is not
/// necessarily the total width of the control, since a few pixels for the
/// border (depending on the controls border style) may be added.
@external(erlang, "wxStaticText", "wrap")
pub fn wrap(this: WxStaticText, width: Int) -> types.OkT
