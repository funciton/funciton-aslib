package funciton.tests.logging {
    
    import asunit.framework.TestCase;
    
    import funciton.logging.Logger;
    
    public class LoggerTest extends TestCase {
        
        public function LoggerTest(testMethod:String){
            super(testMethod);
        }
        
        public function baseTest():void{
            assertEquals("default", Logger.instance.environment);
        }
        
    }
    
}