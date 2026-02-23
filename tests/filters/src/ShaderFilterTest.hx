package;

import haxe.io.BytesOutput;
import utest.Assert;
import utest.Test;
import openfl.display.Shader;
import openfl.filters.ShaderFilter;
#if format
import format.pbj.Data;
import format.pbj.Writer;
#end

class ShaderFilterTest extends Test
{
	private var _shader:Shader;

	public function setupClass():Void
	{
		_shader = new Shader();
	}

	#if !format
	@Ignored
	#end
	public function test_new_()
	{
		// TODO: Confirm functionality

		var shaderFilter = new ShaderFilter(_shader);
		Assert.notNull(shaderFilter);
	}

	#if !format
	@Ignored
	#end
	public function test_shader()
	{
		// TODO: Confirm functionality

		var shaderFilter = new ShaderFilter(_shader);
		var exists = shaderFilter.shader;

		Assert.notNull(exists);
	}
}
