@isTest
private class CommonTestSetup{
	@testSetup
	static void setup(){
		list<Account> testAccts = new list<Account>();
		for (integer i=0; i< 2; i++){
			testAccts.add(new Account(name='Test Account'+i));
						
		}
		insert testAccts;
		
	}
    
    @isTest
    static void testMethod1(){
     Account ac1 = [select id, name, phone from Account where name = 'Test Account0' limit 1];
        ac1.phone = '555-6666';
        update ac1;
        
     Account ac2 = [select id, name from Account where name = 'Test Account1' limit 1];
        delete ac2;  
        
    }
    
    @isTest
    static void testMethod2(){
        Account act1 = [select id, name, phone from Account where name = 'Test Account0' limit 1];
        system.assertEquals(null, act1.phone);
        
        Account act2 = [select id, name, phone from Account where name = 'Test Account1' limit 1];
        system.assertEquals(null, act2.phone);
    }
    }