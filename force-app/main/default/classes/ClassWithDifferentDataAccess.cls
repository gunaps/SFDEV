@isTest
private class ClassWithDifferentDataAccess{
	
	@isTest(SeeAllData = true)
	static void testWithAllDataAccess(){
			
	}
	
	@isTest
	static void testWithOwnDataAccess(){
		user u = [select username, email from user limit 1];
		system.debug('user name::'+ u.username);
		system.debug('Email::'+ u.email);
		
		Account a = new Account(name = 'new Test Account');
		insert a;
		
		Account newlyInsertedAcc = [select id, name from Account where name = 'new Test Account'];
		system.assert(newlyInsertedAcc!= null);
	}	
}