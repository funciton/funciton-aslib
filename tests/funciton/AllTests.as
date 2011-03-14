package funciton {
	
	import asunit.framework.TestSuite;
	
	import funciton.tests.collections.ArrayCollectionTest;
	import funciton.tests.events.CollectionEventTest;
	import funciton.tests.logging.LoggingTest;
	import funciton.tests.logging.LoggerTest;
	import funciton.tests.models.LogMessageTest;
	import funciton.tests.models.UpstreamServerTest;
	import funciton.tests.net.connectors.BaseConnectorTest;
	import funciton.tests.utils.Base36Test;
	import funciton.tests.utils.Base64Test;
	import funciton.tests.utils.DateUtilsTest;
	import funciton.tests.utils.NumberUtilsTest;
	import funciton.tests.utils.PendingCallTest;
	import funciton.tests.utils.StringUtilsTest;
	
	public class AllTests extends TestSuite {
		
		public function AllTests(){
			super();
			
			addTest(new Base64Test("testEncodeDecode"));
			
			addTest(new DateUtilsTest("testConstants"));
			addTest(new DateUtilsTest("testDayOfYear"));
			addTest(new DateUtilsTest("testGetYear"));
			
			addTest(new NumberUtilsTest("testFillWithChar"));
			addTest(new NumberUtilsTest("testRightFillWithChar"));
			addTest(new NumberUtilsTest("testLeftFillWithChar"));
			
			addTest(new PendingCallTest("testOnResult"));
			addTest(new PendingCallTest("testOnFault"));
			
			addTest(new LogMessageTest("testInstantiation"));
			
			addTest(new LoggingTest("testFlags"));
			addTest(new LoggingTest("testHandler"));
			addTest(new LoggingTest("testFormatter"));

            addTest(new LoggerTest("baseTest"));
			
			addTest(new CollectionEventTest("testProperties"));
			
			addTest(new ArrayCollectionTest("testInstantiation"));
			addTest(new ArrayCollectionTest("testClassMethods"));
			addTest(new ArrayCollectionTest("testEvents"));
			
			addTest(new Base36Test("testEncodeDecode"));
			
			addTest(new UpstreamServerTest("testInstantiation"));
			addTest(new UpstreamServerTest("testPropertyChange"));
			
			addTest(new BaseConnectorTest("testConnectionRefused"));
			addTest(new BaseConnectorTest("testConnectionSuccess"));
			addTest(new BaseConnectorTest("testBackupConnection"));
			addTest(new BaseConnectorTest("testDownProperty"));
			addTest(new BaseConnectorTest("testNoUpstreams"));
			
			addTest(new StringUtilsTest("testClassMethods"));
			
		}
		
	}
	
}