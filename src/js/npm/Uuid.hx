package js.npm;
import haxe.extern.EitherType;
import js.node.Buffer;

@:jsRequire('uuid')
extern class Uuid {
  
  public static var NIL:String;
  /**
    Generate and return a RFC4122 v1 (timestamp-based) UUID.
   **/
  @:overload(function(opt:UuidOptions, buffer:Buffer, offset:Int):Buffer {})
  @:overload(function(opt:UuidOptions, buffer:Array<Int>, offset:Int):Array<Int> {})
  @:overload(function(opt:UuidOptions, buffer:Buffer):Buffer {})
  @:overload(function(opt:UuidOptions, buffer:Array<Int>):Array<Int> {})
  @:overload(function(opt:UuidOptions):String {})
  public static function v1():String;
  
  public static function v3():String;

  /**
    Generate and return a RFC4122 v4 UUID.
   **/
  @:overload(function(opt:UuidOptions, buffer:Buffer, offset:Int):Buffer {})
  @:overload(function(opt:UuidOptions, buffer:Array<Int>, offset:Int):Array<Int> {})
  @:overload(function(opt:UuidOptions, buffer:Buffer):Buffer {})
  @:overload(function(opt:UuidOptions, buffer:Array<Int>):Array<Int> {})
  @:overload(function(opt:UuidOptions):String {})
  public static function v4():String;

  public static function v5():String;
  
  public static function validate(uuid:String):Bool;
  public static function version(uuid:String):Int;
  
  /**
    Parse UUID
   **/

  public static function parse(id:String):Buffer;

  /**
    Unparse UUID
   **/
  @:overload(function(buffer:Buffer, offset:Int):String {})
  public static function stringify(id:Buffer):String;
}

typedef UuidOptions = {
  /**
    Node id as Array of 6 bytes (per 4.1.6). Default: Randomly generated ID.

    The randomly generated node id is only guaranteed to stay constant for the lifetime of the current JS runtime.
    (Future versions of this module may use persistent storage mechanisms to extend this guarantee.)
   **/
  @:optional var node:Array<Int>;

  /**
    (Number between 0 - 0x3fff) RFC clock sequence. Default: An internally maintained clockseq is used.
   **/
  @:optional var clockseq:Int;

  /**
    (Number | Date) Time in milliseconds since unix Epoch. Default: The current time is used.
   **/
  @:optional var msecs:EitherType<Float,Date>;

  /**
    (Number between 0-9999) additional time, in 100-nanosecond units. Ignored if msecs is unspecified.
   **/
  @:optional var nsecs:Int;
}
