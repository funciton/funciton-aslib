package funciton.tests {
	
	import asunit.framework.TestCase;
	
	import funciton.utils.NumberUtils;
	
	public class NumberUtilsTest extends TestCase {
		
		public function NumberUtilsTest(testMethod:String){
			super(testMethod);
		}
		
		public function testFillWithChar():void{
			assertEquals("02", NumberUtils.fillWithChar(2, "0", 2, 0));
			assertEquals("20", NumberUtils.fillWithChar(2, "0", 2, 1));
			assertEquals("22", NumberUtils.fillWithChar(22, "0", 2, 1));
			assertEquals("20002", NumberUtils.fillWithChar(22, "0", 5, 1));
			assertEquals("21012", NumberUtils.fillWithChar(22, "10", 5, 1));
			assertThrows(RangeError, function():void{ NumberUtils.fillWithChar(2, "0", 5, 2); });
		}
		
		public function testRightFillWithChar():void{
			assertEquals("2", NumberUtils.rightFillWithChar(2, "0", 1));
			assertEquals("20000", NumberUtils.rightFillWithChar(2, "0", 5));
		}
		
		public function testLeftFillWithChar():void{
			assertEquals("2", NumberUtils.leftFillWithChar(2, "0", 1));
			assertEquals("00002", NumberUtils.leftFillWithChar(2, "0", 5));
		}
		
	}
	
}