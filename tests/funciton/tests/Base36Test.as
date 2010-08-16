package funciton.tests {
	
	import asunit.framework.TestCase;
	
	import funciton.utils.Base36;
	
	public class Base36Test extends TestCase {
		
		public function Base36Test(testMethod:String){
			super(testMethod);
		}
		
		public function testEncodeDecode():void{
			for(var i:uint=0;i<10000;++i){
				assertEquals(i, Base36.decode(Base36.encode(i)));
			}
		}
		
	}
	
}