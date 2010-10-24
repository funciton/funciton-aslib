package funciton.tests.utils {
	
	import asunit.framework.TestCase;
	
	import funciton.utils.StringUtils;
	
	public class StringUtilsTest extends TestCase {
		
		private var $__instance:String;
		
		public function StringUtilsTest(testMethod:String){
			super(testMethod);
		}
		
		protected override function setUp():void{
			$__instance = "              esta ES una PRueBA                               ";
		}
		
		protected override function tearDown():void{
			$__instance = null;
		}
		
		public function testClassMethods():void{
            assertEquals("esta ES una PRueBA                               ", StringUtils.leftTrim($__instance));
            assertEquals("              esta ES una PRueBA", StringUtils.rightTrim($__instance));
            $__instance = StringUtils.trim($__instance);
            assertEquals("esta ES una PRueBA", $__instance);
            assertEquals("Esta es una prueba", StringUtils.capitalize($__instance));
            assertEquals("Esta Es Una Prueba", StringUtils.titleize($__instance));
            assertEquals(4, StringUtils.wordCount($__instance));
            assertEquals("esta ES una...", StringUtils.truncate($__instance, 13, false, "..."));
            assertEquals("esta ES u...", StringUtils.truncate($__instance, 9, true, "..."));
		}
		
	}
	
}