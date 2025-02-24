//// This is the base class for a control or "widget".
////
//// A control is generally a small window which processes user input
//// and/or displays one or more item of data.
////
//// Derived from [`WxWindow`](window.html#WxWindow), [`WxEvtHandler`](evthandler.html#WxEvtHandler)

import silk/types.{type OkT}
import silk/window.{type WxWindow}

pub type WxControl(t) =
  WxWindow(types.WxControl(t))

/// Returns the control's label, as it was passed to [`setLabel`](#set_label).
/// Note that the returned string may contains mnemonics ("&" characters)
/// if they were passed to the `setLabel` function; use `GetLabelText()`
/// (not implemented in wx) if they are undesired.
///
/// Also note that the returned string is always the string which was passed
/// to `setLabel` but may be different from the string passed to
/// `SetLabelText()` (not implemented in wx) (since this last one escapes
/// mnemonic characters).
@external(erlang, "wxControl", "getLabel")
pub fn get_label(this: WxControl(t)) -> String

/// Sets the control's label.
///
/// All "&" characters in the label are special and indicate that the
/// following character is a `mnemonic` for this control and can be used to
/// activate it from the keyboard (typically by using `Alt` key in
/// combination with it). To insert a literal ampersand character, you need
/// to double it, i.e. use "&&". If this behaviour is undesirable, use
/// `SetLabelText()` (not implemented in wx) instead.
@external(erlang, "wxControl", "setLabel")
pub fn set_label(this: WxControl(t), label: String) -> OkT
