package {
	
	import asunit.textui.TestRunner;
	
	import funciton.AllTests;
	
	public class MainTestRunner extends TestRunner {
		
		public function MainTestRunner(){
			super();
			
			start(AllTests, null, TestRunner.SHOW_TRACE);
		}
		
	}
	
}