package funciton.tests {
	
	import asunit.framework.TestCase;
	
	import funciton.logging.Logging;
	import funciton.models.LogMessage;
	
	public class LoggingTest extends TestCase {
		
		private var $__instance:Logging;
		
		public function LoggingTest(testMethod:String){
			super(testMethod);
		}
		
		protected override function setUp():void{
			$__instance = new Logging();
		}
		
		protected override function tearDown():void{
			$__instance = null;
		}
		
		public function testFlags():void{
			assertEquals($__instance.environment, "default");
			assertEquals($__instance.level, Logging.ALL);
			assertEquals("unknown", Logging.getFlagLabel(Logging.NONE));
			assertEquals("debug", Logging.getFlagLabel(Logging.DEBUG));
			assertEquals("info", Logging.getFlagLabel(Logging.INFO));
			assertEquals("warning", Logging.getFlagLabel(Logging.WARNING));
			assertEquals("error", Logging.getFlagLabel(Logging.ERROR));
			assertEquals("critical", Logging.getFlagLabel(Logging.CRITICAL));
		}
		
		public function testHandler():void{
			var testHandlerFunc:Function = function(msg:String):void{
				assertEquals("[info] default hello world", msg);
			};
			$__instance.setHandler(testHandlerFunc);
			$__instance.info("hello world");
			
			var testHandlerFail:Function = function(msg:String):void{
				fail("Handler fired on wrong level");
			};
			$__instance.setHandler(testHandlerFail);
			$__instance.level = Logging.NONE;
			$__instance.warning("fail test");
		}
		
		public function testFormatter():void{
			var testFormatterFunc:Function = function(msg:LogMessage):String{
				return [Logging.getFlagLabel(msg.type), msg.environment, msg.message].join("::");
			};
			var testHandlerFunc:Function = function(msg:String):void{
				assertEquals("warning::test::hello world 2", msg);
			};
			$__instance.environment = "test";
			$__instance.setHandler(testHandlerFunc);
			$__instance.setFormatter(testFormatterFunc);
			$__instance.warning("hello world 2");
		}
		
	}
	
}