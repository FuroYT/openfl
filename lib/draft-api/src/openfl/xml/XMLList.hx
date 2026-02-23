package openfl.xml;

import haxe.xml.Access;

@:transitive
abstract XMLList(Access) from Access from Dynamic to Dynamic
{
	public function new(value:Access)
	{
		this = value;
	}

	public inline function attribute(arg:String):XMLList
	{
		return this.att.resolve(arg);
	}

	public function child(propertyName:String):XMLList
	{
		if (this != null && this.hasNode.resolve(propertyName))
		{
			return this.node.resolve(propertyName);
		}
		else
		{
			return null;
		}
	}

	public inline function children():XMLList
	{
		var children = [];
		for (element in this.elements)
		{
			children.push(element);
		}
		return children;
	}

	public inline function iterator():Iterator<XMLList>
	{
		// TODO: Improve
		// var result:Array<XMLList> = [];
		// var xml:Xml = cast this;
		// for (element in xml.iterator())
		// {
		// 	result.push(element);
		// }
		// return result.iterator();
		return cast this.elements;
	}

	public inline function length():Int
	{
		var length = 0;
		var xml:Xml = cast this;
		for (element in xml.iterator())
		{
			length++;
		}
		return length;
	}

	public function text():XMLList
	{
		// TODO: Improve
		return [this.innerData];
	}

	@:to
	public function toString():String
	{
		if (this == null)
		{
			return "";
		}
		else
		{
			var xml:Xml = cast this;
			switch (xml.nodeType)
			{
				case CData:
					var str = Std.string(this);
					trace(str);
					str = str.substring("<![CDATA[".length, str.length - "]]>".length);
					trace(str);
					return str;
				default:
					return this.innerData;
			}
		}
	}

	@:from
	private static inline function __fromXml(value:Xml):XMLList
	{
		return cast value;
	}

	@:to
	private inline function __toXml():Xml
	{
		return cast this;
	}

	@:op(a.b)
	private inline function __get(name:String):XMLList
	{
		return child(name);
	}

	@:arrayAccess
	private function __arrayAccess(index:Int):XMLList
	{
		// TODO: Improve
		var length = 0;
		var xml:Xml = cast this;
		for (element in xml.iterator())
		{
			length++;
			if (length == index) return element;
		}
		return null;
	}
}
