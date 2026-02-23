package;

import openfl.desktop.ClipboardFormats;
import utest.Assert;
import utest.Test;

class ClipboardFormatsTest extends Test
{
	public function spec()
	{
		switch (ClipboardFormats.HTML_FORMAT)
		{
			case ClipboardFormats.HTML_FORMAT, ClipboardFormats.RICH_TEXT_FORMAT, ClipboardFormats.TEXT_FORMAT:
				Assert.isTrue(true);
		}
	}
}
