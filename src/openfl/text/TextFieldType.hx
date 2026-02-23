package openfl.text;

#if !openfljs
/**
	The TextFieldType class is an enumeration of constant values used in
	setting the `type` property of the TextField class.
**/
#if (haxe_ver >= 4.0) enum #else @:enum #end abstract TextFieldType(Null<Int>)
{
	/**
		Used to specify a `dynamic` TextField.
	**/
	public var DYNAMIC = 0;

	/**
		Used to specify an `input` TextField.
	**/
	public var INPUT = 1;

	@:from private static function fromString(value:String):TextFieldType
	{
		return switch (value)
		{
			case "dynamic": DYNAMIC;
			case "input": INPUT;
			default: null;
		}
	}

	@:to private function toString():String
	{
		return switch (cast this : TextFieldType)
		{
			case TextFieldType.DYNAMIC: "dynamic";
			case TextFieldType.INPUT: "input";
			default: null;
		}
	}
}

abstract TextFieldType(String) from String to String
{
	public var DYNAMIC = "dynamic";
	public var INPUT = "input";
}
#end
