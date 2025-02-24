//// A port of wxWidgets.
////
//// This is the base api of wxWidgets. This module contains functions for starting and stopping the wx-server, as well as other utility functions.
////
//// wxWidgets is object oriented, and not functional. Thus, in Wx a module represents a class, and the object created by this class has an own type, wxCLASS(). This module represents the base class, and all other wxMODULE's are sub-classes of this class.
////
//// Objects of a class are created with wxCLASS:new(...) and destroyed with wxCLASS:destroy(). Member functions are called with wxCLASS:member(Object, ...) instead of as in C++ Object.member(...).
////
//// Sub class modules inherit (non static) functions from their parents. The inherited functions are not documented in the sub-classes.

import gleam/dynamic.{type Dynamic}
import gleam/erlang/atom.{type Atom}
import silk/types.{type OkT}

pub type WxRef {
  WxRef(Int)
}

pub type WxColour4 =
  #(Int, Int, Int, Int)

pub type WxColour =
  #(Int, Int, Int, Int)

/// In Local Timezone
pub type WxDatetime =
  #(#(Int, Int, Int), #(Int, Int, Int))

/// Constant defined in wx.hrl
pub type WxEnum =
  Int

/// Opaque process environment
pub type WxEnv

/// Opaque memory reference
pub type WxMemory =
  BitArray

/// Opaque object reference
pub type WxObject(t) =
  types.WxObject(t)

pub type WxWxHtmlLinkInfo

pub type WxWxMouseState

/// Batches all wx commands used in the fun. Improves performance of the command processing by grabbing the wxWidgets thread so that no event processing will be done before the complete batch of commands is invoked.
@external(erlang, "wx", "batch")
pub fn batch(fun: fn() -> Nil) -> Dynamic

/// Creates a memory area (of Size in bytes) which can be used by an external library (i.e. opengl). It is up to the client to keep a reference to this object so it does not get garbage collected by erlang while still in use by the external library.
@external(erlang, "wx", "create_memory")
pub fn create_memory(size: Int) -> WxMemory

pub type DebugLevel {
  None
  Verbose
  Trace
  Driver
}

@external(erlang, "gleam_stdlib", "identity")
pub fn coerce(input: in) -> out

/// Sets debug level. If debug level is 'verbose' or 'trace' each call is printed on console. If Level is 'driver' each allocated object and deletion is printed on the console.
@external(erlang, "wx", "debug")
pub fn debug(level: DebugLevel) -> OkT

/// Starts a Wx demo if examples directory exists and is compiled
@external(erlang, "wx", "demo")
pub fn demo() -> Result(Nil, Atom)

/// Stops a wx server.
@external(erlang, "wx", "destroy")
pub fn destroy() -> OkT

/// Returns true if both arguments references the same object, false otherwise
@external(erlang, "wx", "equal")
pub fn equal(ref1: WxObject(t), ref2: WxObject(u)) -> Bool

/// Behaves like `lists:foldl/3` but batches wx commands. See [`batch`](#batch).
@external(erlang, "wx", "foldl")
pub fn foldl(fun: fn(t, acc) -> accout, acc: acc, list: List(t)) -> acc

/// Behaves like `lists:foldr/3` but batches wx commands. See [`batch`](#batch).
@external(erlang, "wx", "foldr")
pub fn foldr(fun: fn(t, acc) -> accout, acc: acc, list: List(t)) -> acc

/// Behaves like `lists:foreach/2` but batches wx commands. See [`batch`](#batch).
@external(erlang, "wx", "foreach")
pub fn foreach(fun: fn(t) -> any, list: List(t)) -> Nil

/// Gets this process's current wx environment. Can be sent to other processes to allow them use this process wx environment.
@external(erlang, "wx", "get_env")
pub fn get_env() -> WxEnv

/// Returns the memory area as a binary.
@external(erlang, "wx", "get_memory_bin")
pub fn get_memory_bin(wx_mem: WxMemory) -> BitArray

/// Returns the object type
@external(erlang, "wx", "getObjectType")
pub fn get_object_type(wx_ref: WxRef) -> Atom

/// Returns true if object is null, false otherwise
@external(erlang, "wx", "is_null")
pub fn is_null(wx_ref: WxObject(t)) -> Bool

/// Behaves like `lists:map/2` but batches wx commands. See [`batch`](#batch).
@external(erlang, "wx", "map")
pub fn map(fun: fn(a) -> b, list: List(a)) -> List(b)

/// Starts a wx server.
@external(erlang, "wx", "new")
pub fn new() -> WxObject(t)

// @external(erlang, "wx", "new")
// pub fn new(Options) -> Nil
/// Returns the null object
@external(erlang, "wx", "null")
pub fn null() -> WxObject(t)

@external(erlang, "wx", "parent_class")
pub fn parent_class(wx_ref: WxObject(t)) -> Bool

/// Releases the memory retained by [`retain_memory`](#retain_memory)
@external(erlang, "wx", "release_memory")
pub fn release_memory(wx_mem: WxMemory) -> OkT

/// Saves the memory from deletion until [`release_memory`](#release_memory) is called. If [`release_memory`](#release_memory) is not called the memory will not be garbage collected.
@external(erlang, "wx", "retain_memory")
pub fn retain_memory(wx_mem: WxMemory) -> OkT

/// Sets the process wx environment, allows this process to use another process wx environment.
@external(erlang, "wx", "set_env")
pub fn set_env(wx_env: WxEnv) -> OkT
