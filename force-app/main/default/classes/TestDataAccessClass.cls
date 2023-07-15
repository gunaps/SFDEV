@isTest(seeAllData = true)
public class TestDataAccessClass{
	@isTest
	static void myTestMethod1(){
        list<position__C> posList = system.Test.loadData(position__C.sObjectType,'Position_List');
		Account a = [select id,name from Account where name = 'Sam' LIMIT 1];
		system.assert(a!= null);		
	
	Account testAccount = a.clone();
	testAccount.name = 'Sam Test';
	insert testAccount;
	
	Account testAccount2 = [select id, name from Account where name = 'Sam Test' LIMIT 1];
	system.assert(testAccount2 != null);
	}
	@isTest
	static void myTestMethod2(){
		//Account Accnt = [select name from Account where name = 'Sam Test' LIMIT 1];
		//system.assertEquals('Sam Test',Accnt.name);
		
	}
}