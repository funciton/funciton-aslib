package funciton {
	
	import asunit.framework.TestSuite;
	
	import funciton.tests.Base64Test;
	
	public class AllTests extends TestSuite {
		
		public function AllTests(){
			super();
			
			addTest(new Base64Test("testEncodeDecode"));
		}
		
	}
	
}