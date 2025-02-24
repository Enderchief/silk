import gleam/erlang/process
import silk/boxsizer
import silk/frame
import silk/sizer
import silk/webview
import silk/window
import silk/wx

pub fn main() {
  wx.new()
  let frame =
    frame.new4(wx.null(), 40, "Hello Gleam", [frame.Size(#(500, 500))])
  let view = webview.new(frame, 42)
  let sizer = boxsizer.new(8)

  sizer.add(sizer, view)
  window.show(frame)

  let _ = webview.load_url(view, "https://gleam.run")
  process.sleep_forever()
}
