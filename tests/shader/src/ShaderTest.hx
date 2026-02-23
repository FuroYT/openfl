package;

import openfl.display.Shader;
import openfl.display.ShaderPrecision;
import openfl.utils.ByteArray;
import utest.Assert;
import utest.Test;

class ShaderTest extends Test
{
	public function test_new_()
	{
		var shader = new Shader();

		Assert.equals(ShaderPrecision.FULL, shader.precisionHint);
	}

	@Ignored
	public function test_byteCode()
	{
		// TODO: Confirm functionality

		var shader = new Shader();
		shader.byteCode = new ByteArray();
	}

	@Ignored
	public function test_data()
	{
		// TODO: Confirm functionality

		// var shader = new Shader ();
		// var exists = shader.data;

		// Assert.notNull (exists);
	}

	public function test_precisionHint()
	{
		var shader = new Shader();

		Assert.equals(ShaderPrecision.FULL, shader.precisionHint);

		shader.precisionHint = ShaderPrecision.FAST;

		Assert.equals(ShaderPrecision.FAST, shader.precisionHint);
	}
}
