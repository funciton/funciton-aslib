package funciton.tests {
	
	import asunit.framework.TestCase;
	
	import funciton.utils.Base64;
	
	public class Base64Test extends TestCase {
		
		public function Base64Test(testMethod:String){
			super(testMethod);
		}
		
		public function testEncodeDecode():void{
			var loremipsum:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
								  + "Nulla sit amet diam et risus malesuada sodales sed quis urna. "
								  + "Suspendisse condimentum augue a arcu rutrum ullamcorper. "
								  + "Duis vel quam a lacus euismod consequat non ac sem. "
								  + "Fusce id ipsum libero. Donec convallis quam in lacus dignissim eleifend. Donec magna risu";
			var words:Array = loremipsum.split(" ");
			var word:String;
			while(words.length){
				word = words.pop();
				assertEquals(word, Base64.decode(Base64.encode(word)));
			}
		}
		
	}
	
}