//// The basic idea behind a box sizer is that windows will most often
//// be laid out in rather simple basic geometry, typically in a row or
//// a column or several hierarchies of either.
////
//// Derived from [`WxSizer`](sizer.html#WxSizer)

import silk/types

pub type WxBoxSizer(a) =
  types.WxSizer(types.WxBoxSizer(a))

/// Destroys the object
@external(erlang, "wxBoxSizer", "destroy")
pub fn destroy(this: WxBoxSizer(a)) -> types.OkT

/// Returns the orientation of the box sizer, either wxVERTICAL or wxHORIZONTAL.
@external(erlang, "wxBoxSizer", "getOrientation")
pub fn get_orientation(this: WxBoxSizer(a)) -> types.OkT

/// Constructor for a [`WxBoxSizer`](#WxBoxSizer).
@external(erlang, "wxBoxSizer", "new")
pub fn new(orient: Int) -> WxBoxSizer(Nil)
