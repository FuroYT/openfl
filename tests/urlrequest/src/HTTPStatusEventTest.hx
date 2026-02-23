package;

import openfl.events.HTTPStatusEvent;
import utest.Assert;
import utest.Test;

class HTTPStatusEventTest extends Test
{
	@Ignored
	public function test_responseHeaders()
	{
		// throws error when not dispatched

		var httpStatusEvent = new HTTPStatusEvent(HTTPStatusEvent.HTTP_STATUS);
		var exists = httpStatusEvent.responseHeaders;

		// Assert.notNull (exists);
	}

	@Ignored
	public function test_responseURL()
	{
		// throws error when not dispatched

		var httpStatusEvent = new HTTPStatusEvent(HTTPStatusEvent.HTTP_STATUS);
		var exists = httpStatusEvent.responseURL;

		// Assert.notNull (exists);
	}

	public function test_status()
	{
		var httpStatusEvent = new HTTPStatusEvent(HTTPStatusEvent.HTTP_STATUS);
		var exists = httpStatusEvent.status;

		Assert.notNull(exists);
	}

	public function test_new_()
	{
		var httpStatusEvent = new HTTPStatusEvent(HTTPStatusEvent.HTTP_STATUS);
		Assert.notNull(httpStatusEvent);
	}
}
