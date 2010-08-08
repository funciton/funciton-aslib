package funciton.utils {
	
	import flash.utils.ByteArray;
	
	public class Base64 {
		
		private static const BASE64_CHARS:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
		
		public static function encode(value:String):String{
			var res:String = "";
			
			var t:Array;
			var c0:int;
			var c1:int;
			var c2:int;
			var c3:int;
			for(var i:int=0;i<value.length;){
				t = [value.charCodeAt(i++), value.charCodeAt(i++), value.charCodeAt(i++)];
				c0 = t[0] >> 2;
				c1 = ((t[0] & 3) << 4) | (t[1] >> 4);
				c2 = (isNaN(t[1])) ? 64: (((t[1] & 15) << 2) | (t[2] >> 6));
				c3 = (isNaN(t[1]) || isNaN(t[2])) ? 64: (t[2] & 63);
				res += [BASE64_CHARS.charAt(c0), BASE64_CHARS.charAt(c1), BASE64_CHARS.charAt(c2), BASE64_CHARS.charAt(c3)].join("");
			}
			
			return res;
		}
		
		public static function decode(value:String):String{
			var res:String = "";
			
			var t:Array;
			var c0:int;
			var c1:int;
			var c2:int;
			for(var i:int=0;i<value.length;){
				t = [BASE64_CHARS.indexOf(value.charAt(i++)), BASE64_CHARS.indexOf(value.charAt(i++)), 
					 BASE64_CHARS.indexOf(value.charAt(i++)), BASE64_CHARS.indexOf(value.charAt(i++))];
				c0 = (t[0] << 2) | (t[1] >> 4);
				c1 = ((t[1] & 15) << 4) | (t[2] >> 2);
				c2 = ((t[2] & 3) << 6) | t[3];
				res += String.fromCharCode(c0);
				if(t[2] != 64) res += String.fromCharCode(c1);
				if(t[3] != 64) res += String.fromCharCode(c2);
			}
			
			return res;
		}
		
	}
	
}
