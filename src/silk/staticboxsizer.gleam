//// wxStaticBoxSizer is a sizer derived from wxBoxSizer but adds a static box around the sizer.
////
//// The static box may be either created independently or the sizer may create it itself as a convenience. In any case, the sizer owns the wxStaticBox control and will delete it in the wxStaticBoxSizer destructor.
////
//// Note that since wxWidgets 2.9.1 you are encouraged to create the windows which are added to wxStaticBoxSizer as children of wxStaticBox itself, see this class documentation for more details.
////
//// Derived from [`WxBoxSizer`](boxsizer.html#WxBoxSizer), [`WxSizer`](sizer.html#WxSizer)

import silk/boxsizer
import silk/types
import silk/window

pub type WxStaticBoxSizer =
  boxsizer.WxBoxSizer(types.WxStaticBoxSizer)

/// Destroys the object
@external(erlang, "wxStaticBoxSizer", "destroy")
pub fn destroy(this: WxStaticBoxSizer) -> types.OkT

// /// Returns the static box associated with the sizer.
// @external(erlang, "WxStaticBoxSizer", "getStaticBox")
// pub fn get_static_box(this: WxStaticBoxSizer) -> WxStaticBox

/// This constructor uses an already existing static box.
@external(erlang, "wxStaticBoxSizer", "new")
pub fn new2(orient: Int, parent: window.WxWindow(a)) -> WxStaticBoxSizer

pub type Label {
  Label(String)
}

/// This constructor creates a new static box with the given label and parent window.
@external(erlang, "wxStaticBoxSizer", "new")
pub fn new3(
  orient: Int,
  parent: window.WxWindow(a),
  option: List(Label),
) -> WxStaticBoxSizer
