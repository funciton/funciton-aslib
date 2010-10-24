package funciton.utils {

    public class StringUtils {
    
        public static function capitalize(str:String):String{
            if(!str.length) return str;
            return str.charAt(0).toUpperCase() + str.substring(1).toLowerCase(); 
        }
        
        public static function titleize(str:String):String{
            if(!str.length) return str;
            var $__wordHandler:Function = function(word:String, index:uint, source:String):String{
                return capitalize(word);
            }
            return str.replace(/\w+/g, $__wordHandler);
        }
        
        public static function truncate(str:String, length:uint=255, killWords:Boolean=false, end:String="..."):String{
            if(str.length <= length){
                return str;
            }else if(killWords){
                return str.substr(0, length) + end;
            }else{
                var words:Array = str.split(" ");
                var total:int = 0;
                var res:Array = [];
                for(var i:int=0;i<words.length;++i){
                    total += words[i].length;
                    if(total > length) break;
                    res.push(words[i]);
                }
                return res.join(" ") + end;
            }
        }
        
        public static function wordCount(str:String):uint{
            return str.match(/\w+/g).length;
        }
        
        public static function reverse(str:String):String{
            return str.split("").reverse().join("");
        }
        
        public static function leftTrim(str:String):String{
            return str.replace(/^\s+/g, "");
        }
        
        public static function rightTrim(str:String):String{
            return str.replace(/\s+$/g, "");
        }
        
        public static function trim(str:String):String{
            return leftTrim(rightTrim(str));
        }
    
    }

}