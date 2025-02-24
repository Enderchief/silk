-module(silk_ffi).
-export([wx_horizontal/0, wx_vertical/0]).
-include_lib("wx/include/wx.hrl").

wx_vertical() ->
   ?wxVERTICAL
.

wx_horizontal() ->
   ?wxHORIZONTAL
.
