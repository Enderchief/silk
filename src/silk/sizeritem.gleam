import silk/types.{type WxSizer, type WxSizerItem}

type Res =
  Result(Nil, Nil)

@external(erlang, "wxSizerItem", "assignSizer")
pub fn assign_sizer(this: WxSizerItem, sizer: WxSizer(s)) -> Res
// @external(erlang, "wxSizerItem", "assignSpacer")
// pub fn assign_spacer(this: WxSizerItem, size) -> Res

// @external(erlang, "wxSizerItem", "assignSpacer")
// pub fn assign_spacer(this: WxSizerItem, w, h) -> Res

// @external(erlang, "wxSizerItem", "assignWindow")
// pub fn assign_window(this: WxSizerItem, window) -> Res

// @external(erlang, "wxSizerItem", "calcMin")
// pub fn calc_min(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "deleteWindows")
// pub fn delete_windows(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "destroy")
// pub fn destroy(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "detachSizer")
// pub fn detach_sizer(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getBorder")
// pub fn get_border(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getFlag")
// pub fn get_flag(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getMinSize")
// pub fn get_min_size(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getPosition")
// pub fn get_position(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getProportion")
// pub fn get_proportion(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getRatio")
// pub fn get_ratio(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getRect")
// pub fn get_rect(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getSize")
// pub fn get_size(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getSizer")
// pub fn get_sizer(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getSpacer")
// pub fn get_spacer(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getUserData")
// pub fn get_user_data(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "getWindow")
// pub fn get_window(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "isShown")
// pub fn is_shown(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "isSizer")
// pub fn is_sizer(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "isSpacer")
// pub fn is_spacer(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "isWindow")
// pub fn is_window(this: WxSizerItem) -> Res

// @external(erlang, "wxSizerItem", "new")
// pub fn new(window) -> Res

// @external(erlang, "wxSizerItem", "new/2")
// pub fn new/2( -> Res

// @external(erlang, "wxSizerItem", "new")
// pub fn new(width, height, options) -> Res

// @external(erlang, "wxSizerItem", "setBorder")
// pub fn set_border(this: WxSizerItem, border) -> Res

// @external(erlang, "wxSizerItem", "setDimension")
// pub fn set_dimension(this: WxSizerItem, pos, size) -> Res

// @external(erlang, "wxSizerItem", "setFlag")
// pub fn set_flag(this: WxSizerItem, flag) -> Res

// @external(erlang, "wxSizerItem", "setInitSize")
// pub fn set_init_size(this: WxSizerItem, x, y) -> Res

// @external(erlang, "wxSizerItem", "setMinSize")
// pub fn set_min_size(this: WxSizerItem, size) -> Res

// @external(erlang, "wxSizerItem", "setMinSize")
// pub fn set_min_size(this: WxSizerItem, x, y) -> Res

// @external(erlang, "wxSizerItem", "setProportion")
// pub fn set_proportion(this: WxSizerItem, proportion) -> Res

// @external(erlang, "wxSizerItem", "setRatio/2")
// pub fn set_ratio/2( -> Res

// @external(erlang, "wxSizerItem", "setRatio")
// pub fn set_ratio(this: WxSizerItem, width, height) -> Res

// @external(erlang, "wxSizerItem", "show")
// pub fn show(this: WxSizerItem, show) -> Res
