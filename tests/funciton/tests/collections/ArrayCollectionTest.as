package funciton.tests.collections {
	
	import asunit.framework.TestCase;
	
	import funciton.collections.ArrayCollection;
	import funciton.events.CollectionEvent;
	
	public class ArrayCollectionTest extends TestCase {
		
		private var $__instance:ArrayCollection;
		
		public function ArrayCollectionTest(testMethod:String){
			super(testMethod);
		}
		
		override protected function tearDown():void{
			$__instance = null;
		}
		
		public function testInstantiation():void{
			$__instance = new ArrayCollection();
			assertEqualsArrays([], $__instance.toArray());
			assertEquals(0, $__instance.length);
			
			$__instance = new ArrayCollection(["test", "test2"]);
			assertEqualsArrays(["test", "test2"], $__instance.toArray());
			assertEquals(2, $__instance.length);
		}
		
		public function testClassMethods():void{
			$__instance = new ArrayCollection();
			$__instance.source = ["test"];
			assertEqualsArrays(["test"], $__instance.toArray());
			
			$__instance.addAllAt(["test0"], 0);
			assertEqualsArrays(["test0", "test"], $__instance.toArray());
			
			$__instance.addAll(["test2"]);
			assertEqualsArrays(["test0", "test", "test2"], $__instance.toArray());
			
			$__instance.addItem("test3");
			assertEqualsArrays(["test0", "test", "test2", "test3"], $__instance.toArray());
			
			$__instance.addItemAt("test-1", 0);
			assertEqualsArrays(["test-1", "test0", "test", "test2", "test3"], $__instance.toArray());
			
			assertTrue($__instance.contains("test"));
			assertFalse($__instance.contains("tester"));			
			
			assertThrows(RangeError, function():void{ $__instance.getItemAt($__instance.length) });
			
			assertEquals("test", $__instance.getItemAt(2));
			assertEquals(1, $__instance.getItemIndex("test0"));
			
			assertEquals("test", $__instance.removeItemAt(2));
			assertEquals(4, $__instance.length);
			
			$__instance.replace("test0", 0);
			assertEqualsArrays(["test0", "test0", "test2", "test3"], $__instance.toArray());
			assertEqualsArrays($__instance.toArray(), $__instance.clone().toArray());
			
			$__instance.removeAll();
			assertEqualsArrays([], $__instance.toArray());
		}
		
		public function testEvents():void{
			$__instance = new ArrayCollection();
			$__instance.addEventListener(CollectionEvent.ADD, addAsync(null));
			$__instance.addEventListener(CollectionEvent.UPDATE, addAsync(null));
			$__instance.addEventListener(CollectionEvent.REPLACE, addAsync(null));
			$__instance.addEventListener(CollectionEvent.RESET, addAsync(null));
			$__instance.addEventListener(CollectionEvent.REMOVE, addAsync(null));
			$__instance.addItem("test");
			$__instance.replace("test2", 0);
			$__instance.removeItemAt(0);
		}
		
	}
	
}