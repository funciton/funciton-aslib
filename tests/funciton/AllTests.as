package funciton {
	
	import asunit.framework.TestSuite;
	
	import funciton.tests.Base64Test;
	import funciton.tests.DateUtilsTest;
	import funciton.tests.LogMessageTest;
	import funciton.tests.LoggingTest;
	import funciton.tests.NumberUtilsTest;
	import funciton.tests.PendingCallTest;
	
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
			
		}
		
	}
	
}