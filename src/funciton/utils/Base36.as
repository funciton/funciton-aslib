package funciton.utils {
	
	import flash.errors.IllegalOperationError;
	
	public class Base36 {
		
		private static const BASE36_CHARS:String = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		
		public static function encode(value:Number):String{
			var res:String = "";
			
			if(value < 0 || value != Math.floor(value)) throw new IllegalOperationError("value must be a uint");
			
			if(!value){
				res = "0";
			}else{
				while(value > 0){
					res = BASE36_CHARS.charAt(value % 36) + res;
					value = Math.floor(value / 36);
				}
			}
			
			return res;
		}
		
		public static function decode(value:String):Number{
			return parseInt(value, 36);
		}
		
	}
	
}
