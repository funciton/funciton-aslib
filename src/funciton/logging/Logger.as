package funciton.logging {
	
	import flash.errors.IllegalOperationError;
	
	public class Logger extends Logging {
		
		protected var $__instance:Logger = new Logger();
		protected var $__loggers:Object = new Object();
		
		public function Logger(){
			if($__instance) throw new IllegalOperationError("Can't instantiate. Use Logger.instance singleton");
		}
		
		public function get instance():Logger{ return $__instance; }
		
		public function getLogger(name:String):Logging{
			if($__loggers[name] == null){
				var _logger:Logging = new Logging();
				_logger.environment = name;
				$__loggers[name] = _logger;
			}
			
			return $__loggers[name];
		}
		
	}
	
}