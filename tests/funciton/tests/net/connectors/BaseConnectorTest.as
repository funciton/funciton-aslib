package funciton.tests.net.connectors {
	
	import asunit.framework.TestCase;
	
	import flash.events.Event;
	import flash.net.NetConnection;
	
	import funciton.models.UpstreamServer;
	import funciton.net.connectors.BaseConnector;
	import funciton.utils.PendingCall;
	
	public class BaseConnectorTest extends TestCase {
		
		public function BaseConnectorTest(testMethod:String){
			super(testMethod);
		}
		
		public function testConnectionRefused():void{
			var upstreamFailed:UpstreamServer = new UpstreamServer("127.0.0.1", "test", 1935, "rtmp");
			var conn:BaseConnector = new BaseConnector();
			conn.addEventListener(Event.CLOSE, addAsync());
			conn.connect(Vector.<UpstreamServer>([upstreamFailed]));
		}
		
		public function testConnectionSuccess():void{
			var localConn:UpstreamServer = new UpstreamServer();
			var conn:BaseConnector = new BaseConnector();
			var onResult:Function = function(e:Event):void{
				assertTrue((e.currentTarget as BaseConnector).nc is NetConnection);
				assertTrue((e.currentTarget as BaseConnector).nc.connected);
			};
			conn.addEventListener(Event.CONNECT, addAsync(onResult));
			conn.connect(Vector.<UpstreamServer>([localConn]));
		}
		
		public function testBackupConnection():void{
			var failedConn:UpstreamServer = new UpstreamServer("127.0.0.1", "test", 1935, "rtmp");
			var localConn:UpstreamServer = new UpstreamServer();
			localConn.backup = true;
			var onResult:Function = function(e:Event):void{
				assertEquals("null", (e.currentTarget as BaseConnector).nc.uri);
			};
			var conn:BaseConnector = new BaseConnector();
			conn.addEventListener(Event.CONNECT, addAsync(onResult));
			conn.connect(Vector.<UpstreamServer>([localConn, failedConn]));
		}
		
		public function testDownProperty():void{
			var localConn:UpstreamServer = new UpstreamServer();
			localConn.down = true;
			var conn:BaseConnector = new BaseConnector();
			conn.addEventListener(Event.CLOSE, addAsync());
			conn.connect(Vector.<UpstreamServer>([localConn]));
		}
		
		public function testNoUpstreams():void{
			var conn:BaseConnector = new BaseConnector();
			conn.addEventListener(Event.CONNECT, addAsync());
			conn.connect(null);
		}
		
	}
	
}