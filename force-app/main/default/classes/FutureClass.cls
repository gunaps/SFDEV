public class FutureClass{

	@future
	public static void myFutureMethod(){
		list<Account> accList = [select id, name, type from account where type = 'Prospect'];
		list<Account> newAccList = new list<Account>();
		for(account a: accList){
			a.type = 'Customer - Direct';
            newAccList.add(a);
		}
		
		update newAccList;
			
	}

}