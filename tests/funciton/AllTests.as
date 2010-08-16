package funciton {
	
	import asunit.framework.TestSuite;
	
	import funciton.tests.ArrayCollectionTest;
	import funciton.tests.Base36Test;
	import funciton.tests.Base64Test;
	import funciton.tests.CollectionEventTests;
	import funciton.tests.DateUtilsTest;
	import funciton.tests.LogMessageTest;
	import funciton.tests.LoggingTest;
	import funciton.tests.NumberUtilsTest;
	import funciton.tests.PendingCallTest;
	import funciton.tests.UpstreamServerTest;
	
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
			
			addTest(new CollectionEventTests("testProperties"));
			
			addTest(new ArrayCollectionTest("testInstantiation"));
			addTest(new ArrayCollectionTest("testClassMethods"));
			addTest(new ArrayCollectionTest("testEvents"));
			
			addTest(new Base36Test("testEncodeDecode"));
			
			addTest(new UpstreamServerTest("testInstantiation"));
			addTest(new UpstreamServerTest("testPropertyChange"));
			
		}
		
	}
	
}