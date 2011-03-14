package funciton.logging {
	
	import flash.errors.IllegalOperationError;
	
	public class Logger extends Logging {
		
		protected static var $__instance:Logger;
		protected static var $__loggers:Object = new Object();
		
		public function Logger(){
			throw new IllegalOperationError("Can't instantiate. Use Logger.instance singleton");
		}
		
		public static function get instance():Logging{ return Logger.getLogger("default"); }
		
		public static function getLogger(name:String):Logging{
			if($__loggers[name] == null){
				var _logger:Logging = new Logging();
				_logger.environment = name;
				$__loggers[name] = _logger;
			}
			
			return $__loggers[name];
		}
		
	}
	
}