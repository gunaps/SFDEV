public with sharing class AccountDetail1{
    //ED:28-05-2023: Added comments
    public void createAccount(string vLum){

        Account acc = new Account();
        acc.name = vLum + 'Account';
        insert acc;
        system.debug('New Account Id is :::'+ acc.id);
    }
	public void createContact(string vLum){

        contact con = new contact();
        con.lastname = vLum + 'contact';
        insert con;
        system.debug('New contact Id is :::'+ con.id);
    }
    }