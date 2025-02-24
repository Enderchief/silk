import gleam/erlang/process
import gleam/int
import gleam/list
import silk/boxsizer
import silk/constants
import silk/frame
import silk/sizer
import silk/staticboxsizer
import silk/statictext
import silk/types
import silk/window
import silk/wx

pub fn main() {
  wx.new()
  let frame =
    frame.new4(wx.null(), constants.id_any, "Demo Window", [
      frame.Size(#(500, 500)),
    ])
  let main_sizer = boxsizer.new(constants.vertical)
  let text_sizer =
    staticboxsizer.new3(constants.vertical, frame, [
      staticboxsizer.Label("Area of text"),
    ])

  ["Hello from Gleam", "This is created using Silk", "Erlang <3"]
  |> list.map(fn(text) {
    let static = statictext.new3(frame, constants.id_any, text)
    sizer.add3(text_sizer, static, [
      sizer.Border(10),
      sizer.Flag(int.bitwise_or(
        constants.stretch_expand,
        constants.direction_all,
      )),
    ])
  })

  sizer.add3(main_sizer, wx.coerce(text_sizer), [
    sizer.Flag(constants.stretch_expand),
  ])

  window.set_sizer(frame, main_sizer)

  window.show(frame)
  process.sleep_forever()
}

@external(erlang, "wxPanel", "setSizer")
pub fn set_sizer(panel: a, sizer: b) -> types.OkT
