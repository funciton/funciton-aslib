package funciton.tests {
	
	import asunit.framework.TestCase;
	
	import funciton.models.LogMessage;	
	import funciton.logging.Logging;
	
	public class LogMessageTest extends TestCase {
		
		private var $__instance:LogMessage;
		
		public function LogMessageTest(testMethod:String){
			super(testMethod);
		}
		
		protected override function setUp():void{
			$__instance = new LogMessage(Logging.DEBUG, "unit test", "testenv");
		}
		
		protected override function tearDown():void{
			$__instance = null;
		}
		
		public function testInstantiation():void{
			assertEquals(Logging.DEBUG, $__instance.type);
			assertEquals("unit test", $__instance.message);
			assertEquals("testenv", $__instance.environment);
			assertNotNull($__instance.date);
		}
		
	}
	
}