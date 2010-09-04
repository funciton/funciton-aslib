package funciton.tests.events {
	
	import asunit.framework.TestCase;
	
	import funciton.events.CollectionEvent;
	
	public class CollectionEventTest extends TestCase {
		
		private var $__instance:CollectionEvent;
		
		public function CollectionEventTest(testMethod:String){
			super(testMethod);
		}
		
		override protected function tearDown():void{
			$__instance = null;
		}
		
		public function testProperties():void{
			$__instance = new CollectionEvent(CollectionEvent.ADD);
			assertFalse($__instance.bubbles);
			assertFalse($__instance.cancelable);
			assertNull($__instance.items);
			assertEquals(CollectionEvent.ADD, $__instance.type);
			assertTrue($__instance.clone() is CollectionEvent);
			
			$__instance = new CollectionEvent(CollectionEvent.ADD, false, false, ["test", "test2"]);
			assertEquals(2, $__instance.items.length);
		}
		
	}
	
}