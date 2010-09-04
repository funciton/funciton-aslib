package funciton.tests.utils {
	
	import asunit.framework.TestCase;
	
	import funciton.utils.DateUtils;
	
	public class DateUtilsTest extends TestCase {
		
		private var $__instance:Date;
		
		public function DateUtilsTest(testMethod:String){
			super(testMethod);
		}
		
		protected override function setUp():void{
			$__instance = new Date();
		}
		
		protected override function tearDown():void{
			$__instance = null;
		}
		
		public function testConstants():void{
			assertEquals(1000, DateUtils.SECOND_IN_MS);
			assertEquals(60000, DateUtils.MINUTE_IN_MS);
			assertEquals(3600000, DateUtils.HOUR_IN_MS);
			assertEquals(86400000, DateUtils.DAY_IN_MS);
			assertEquals(604800000, DateUtils.WEEK_IN_MS);
		}
		
		public function testDayOfYear():void{
			$__instance.fullYear = 2010;
			
			$__instance.month = 0;
			$__instance.date = 1;
			assertEquals(1, DateUtils.getDayOfYear($__instance));
			
			$__instance.month = 11;
			$__instance.date = 31;
			assertEquals(365, DateUtils.getDayOfYear($__instance));
		}
		
		public function testGetYear():void{
			$__instance.fullYear = 1985;
			assertEquals("85", DateUtils.getYear($__instance));
			
			$__instance.fullYear = 800;	
			assertEquals("00", DateUtils.getYear($__instance));
			
			$__instance.fullYear = 21000;
			assertEquals("00", DateUtils.getYear($__instance));
		}
		
	}
	
}