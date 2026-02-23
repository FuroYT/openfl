package openfl.utils._internal;

#if macro
import haxe.macro.Compiler;
import haxe.macro.Context;

@SuppressWarnings("checkstyle:FieldDocComment")
class ExtraParamsMacro
{
	public static function include():Void
	{
		if (!Context.defined("tools"))
		{
			#if debug
			if (!Context.defined("openfl-enable-handle-error"))
			{
				Compiler.define("openfl-disable-handle-error");
			}
			#end
		}
	}
}
#end
