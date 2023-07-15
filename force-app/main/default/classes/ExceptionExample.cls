public class ExceptionExample{
	public virtual class BaseException extends Exception{}
	public class OtherException extends BaseException{}
	
	public static void testExtendedException(){
		try{
			Integer i = 0;
			
			if(i<5)
				throw new OtherException('The number of records is less than 5');
		} catch(BaseException e){
			system.debug(e.getMessage());
		}
		
	}
}