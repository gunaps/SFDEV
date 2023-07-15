public class PositionUtility {
	//This is the comments that is been added during deployment
	//This is a new class.
    public static void mainProcessing(){
        try{
            insertPositionMethod();
        } catch(PositionException pe){
            system.debug('Message 1::' + pe.getMessage());
            system.debug('Message 2::' + pe.getcause());
            system.debug('Message 3::' + pe.getLineNumber());
            system.debug('Message 4::' + pe.getStackTraceString());            
        }
    }
    
    public static void insertPositionMethod(){
        try{
            position__c pos = new position__C();
            insert pos;
        } catch(DMLException e){
            throw new PositionException('Position record cannot be created :' + e);
        }
    }
}