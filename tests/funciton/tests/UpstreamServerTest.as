package funciton.tests {
	
	import asunit.framework.TestCase;
	
	import funciton.models.UpstreamServer;
	
	public class UpstreamServerTest extends TestCase {
		
		private var $__instance:UpstreamServer;
		
		public function UpstreamServerTest(testMethod:String){
			super(testMethod);
		}
		
		protected override function setUp():void{
			$__instance = new UpstreamServer("127.0.0.1", "appName", 80);
		}
		
		protected override function tearDown():void{
			$__instance = null;
		}
		
		public function testInstantiation():void{
			assertEquals("127.0.0.1", $__instance.host);
			assertEquals("appName", $__instance.appName);
			assertEquals(80, $__instance.port);
			assertEquals("http", $__instance.protocol);
			assertFalse($__instance.down);
			assertFalse($__instance.backup);
			assertEquals(3600000, $__instance.expires);
			assertEquals(-1, $__instance.timeout);
			assertEquals(1, $__instance.weight);
			assertEquals(-1, $__instance.max_fails);
			assertEquals("http://127.0.0.1:80/appName", $__instance.uri);
		}
		
		public function testPropertyChange():void{
			$__instance.host = "0.0.0.0";
			assertEquals("0.0.0.0", $__instance.host);
			
			$__instance.appName = "myApp";
			assertEquals("myApp", $__instance.appName);
			
			$__instance.port = -1;
			assertEquals(-1, $__instance.port);
			
			$__instance.protocol = "ftp";
			assertEquals("ftp", $__instance.protocol);
			
			$__instance.down = true;
			assertTrue($__instance.down);
			
			$__instance.backup = true;
			assertTrue($__instance.backup);
			
			$__instance.expires = 0;
			assertEquals(0, $__instance.expires);
			
			$__instance.timeout = 1000;
			assertEquals(1000, $__instance.timeout);
			
			$__instance.weight = 5;
			assertEquals(5, $__instance.weight);
			
			$__instance.max_fails = 10;
			assertEquals(10, $__instance.max_fails);
			
			assertEquals("ftp://0.0.0.0/myApp", $__instance.uri);
		}
		
	}
	
}