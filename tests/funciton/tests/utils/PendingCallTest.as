package funciton.tests.utils {
	
	import asunit.framework.TestCase;
	
	import funciton.utils.PendingCall;
	
	public class PendingCallTest extends TestCase {
		
		private var $__instance:PendingCall;
		
		public function PendingCallTest(testMethod:String){
			super(testMethod);
		}
		
		protected override function setUp():void{
			$__instance = new PendingCall();
		}
		
		protected override function tearDown():void{
			$__instance = null;
		}
		
		public function testOnResult():void{
			$__instance.onResult = function(str:String):void{
				assertEquals("test", str);
			};
			$__instance.onResult("test");
			
			$__instance.onResult = function(t:uint):void{
				assertEquals(10, t);
			};
			$__instance.onResult(10);
		}
		
		public function testOnFault():void{
			$__instance.onFault = function(str:String):void{
				assertEquals("test", str);
			};
			$__instance.onFault("test");
			
			$__instance.onFault = function(t:uint):void{
				assertEquals(10, t);
			};
			$__instance.onFault(10);
		}
		
	}
	
}