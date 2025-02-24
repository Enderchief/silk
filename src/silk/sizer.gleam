import silk/types.{type OkT, type WxSizerItem}

// import silk/window.{type WxWindow}
//
type WxWindow(win) =
  types.WxObject(types.WxWindow(win))

pub type WxSizer(t) =
  types.WxSizer(t)

/// Appends a child to the sizer.
@external(erlang, "wxSizer", "add")
pub fn add(this: WxSizer(sizer), window: WxWindow(win)) -> WxSizerItem

@external(erlang, "wxSizer", "add")
pub fn add3(
  this: WxSizer(sizer),
  window: WxWindow(win),
  option: List(AddOption),
) -> OkT

pub type AddOption {
  Proportion(Int)
  Flag(Int)
  Border(Int)
}

@external(erlang, "wxSizer", "add")
pub fn add4(
  this: WxSizer(sizer),
  width: Int,
  height: Int,
  option: List(AddOption),
) -> OkT

/// This base function adds non-stretchable space to both the horizontal and vertical orientation of the sizer.
@external(erlang, "wxSizer", "addSpacer")
pub fn add_spacer(this: WxSizer(sizer), size: Int) -> WxSizerItem

/// Equivalent to [`add_stretch_spacer2(this, [])`](#add_stretch_spacer2).
@external(erlang, "wxSizer", "addStretchSpacer")
pub fn add_stretch_spacer(this: WxSizer(sizer)) -> WxSizerItem

pub type StretchOption {
  Prop(Int)
}

/// Adds stretchable space to the sizer.
@external(erlang, "wxSizer", "addStretchSpacer")
pub fn add_stretch_spacer2(
  this: WxSizer(sizer),
  option: List(StretchOption),
) -> WxSizerItem

/// This method is abstract and has to be overwritten by any derived class.
///
/// Here, the sizer will do the actual calculation of its children's minimal sizes.
@external(erlang, "wxSizer", "calcMin")
pub fn calc_min(this: WxSizer(sizer)) -> #(Int, Int)

/// Equivalent to [`clear2(this, [])`](#clear2).
@external(erlang, "wxSizer", "clear")
pub fn clear(this: WxSizer(sizer)) -> OkT

pub type ClearOption {
  DeleteWindows(Bool)
}

/// Detaches all children from the sizer.
///
/// If `delete_windows` is true then child windows will also be deleted.
///
/// Notice that child sizers are always deleted, as a general consequence of the principle that sizers own their sizer children, but don't own their window children (because they are already owned by their parent windows).
@external(erlang, "wxSizer", "clear")
pub fn clear2(this: WxSizer(sizer), option: ClearOption) -> OkT

/// Detach a item at position `index` from the sizer without destroying it.
///
/// This method does not cause any layout or resizing to take place, call [`layout`](#layout) to update the layout "on screen" after detaching a child from the sizer. Returns true if the child item was found and detached, false otherwise.
@external(erlang, "wxSizer", "detach")
pub fn detach(this: WxSizer(t), window: WxWindow(win)) -> Bool

/// Tell the sizer to resize the window so that its client area matches the sizer's minimal size (ComputeFittingClientSize() (not implemented in wx) is called to determine it).
///
/// This is commonly done in the constructor of the window itself, see sample in the description of wxBoxSizer.
///
/// Return: The new window size.
@external(erlang, "wxSizer", "fit")
pub fn fit(this: WxSizer(sizer), window: WxWindow(win)) -> #(Int, Int)
// @external(erlang, "wxSizer", "fitInside")
// pub fn fit_inside(this: WxSizer(sizer), window) -> OkT

// @external(erlang, "wxSizer", "getChildren")
// pub fn get_children(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "getItem/2")
// pub fn get_item/2( -> OkT

// @external(erlang, "wxSizer", "getItem/3")
// pub fn get_item/3( -> OkT

// @external(erlang, "wxSizer", "getMinSize")
// pub fn get_min_size(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "getPosition")
// pub fn get_position(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "getSize")
// pub fn get_size(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "hide/2")
// pub fn hide/2( -> OkT

// @external(erlang, "wxSizer", "hide/3")
// pub fn hide/3( -> OkT

// @external(erlang, "wxSizer", "insert")
// pub fn insert(this: WxSizer(sizer), index, item) -> OkT

// @external(erlang, "wxSizer", "insert/4")
// pub fn insert/4( -> OkT

// @external(erlang, "wxSizer", "insert/5")
// pub fn insert/5( -> OkT

// @external(erlang, "wxSizer", "insertSpacer")
// pub fn insert_spacer(this: WxSizer(sizer), index, size) -> OkT

// @external(erlang, "wxSizer", "insertStretchSpacer")
// pub fn insert_stretch_spacer(this: WxSizer(sizer), index) -> OkT

// @external(erlang, "wxSizer", "insertStretchSpacer/3")
// pub fn insert_stretch_spacer/3( -> OkT

// @external(erlang, "wxSizer", "isShown/2")
// pub fn is_shown/2( -> OkT

// @external(erlang, "wxSizer", "layout")
// pub fn layout(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "prepend")
// pub fn prepend(this: WxSizer(sizer), item) -> OkT

// @external(erlang, "wxSizer", "prepend/3")
// pub fn prepend/3( -> OkT

// @external(erlang, "wxSizer", "prepend/4")
// pub fn prepend/4( -> OkT

// @external(erlang, "wxSizer", "prependSpacer")
// pub fn prepend_spacer(this: WxSizer(sizer), size) -> OkT

// @external(erlang, "wxSizer", "prependStretchSpacer")
// pub fn prepend_stretch_spacer(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "prependStretchSpacer/2")
// pub fn prepend_stretch_spacer/2( -> OkT

// @external(erlang, "wxSizer", "recalcSizes")
// pub fn recalc_sizes(this: WxSizer(sizer)) -> OkT

// @external(erlang, "wxSizer", "remove/2")
// pub fn remove/2( -> OkT

// @external(erlang, "wxSizer", "replace/3")
// pub fn replace/3( -> OkT

// @external(erlang, "wxSizer", "replace/4")
// pub fn replace/4( -> OkT

// @external(erlang, "wxSizer", "setDimension")
// pub fn set_dimension(this: WxSizer(sizer), pos, size) -> OkT

// @external(erlang, "wxSizer", "setDimension")
// pub fn set_dimension(this: WxSizer(sizer), x, y, width, height) -> OkT

// @external(erlang, "wxSizer", "setItemMinSize/3")
// pub fn set_item_min_size/3( -> OkT

// @external(erlang, "wxSizer", "setItemMinSize/4")
// pub fn set_item_min_size/4( -> OkT

// @external(erlang, "wxSizer", "setMinSize")
// pub fn set_min_size(this: WxSizer(sizer), size) -> OkT

// @external(erlang, "wxSizer", "setMinSize")
// pub fn set_min_size(this: WxSizer(sizer), width, height) -> OkT

// @external(erlang, "wxSizer", "setSizeHints")
// pub fn set_size_hints(this: WxSizer(sizer), window) -> OkT

// @external(erlang, "wxSizer", "setVirtualSizeHints")
// pub fn set_virtual_size_hints(this: WxSizer(sizer), window) -> OkT

// @external(erlang, "wxSizer", "show/2")
// pub fn show/2( -> OkT

// @external(erlang, "wxSizer", "show/3")
// pub fn show/3( -> OkT

// @external(erlang, "wxSizer", "showItems")
// pub fn show_items(this: WxSizer(sizer), show) -> OkT
