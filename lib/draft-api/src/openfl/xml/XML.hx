package openfl.xml;

@:transitive
@:forward
abstract XML(XMLList) from XMLList from Xml from Dynamic to Dynamic to Xml
{
	public function new(value:String)
	{
		var xml = Xml.parse(value);
		if (xml != null)
		{
			xml = xml.firstElement();
		}
		this = xml;
	}
}
