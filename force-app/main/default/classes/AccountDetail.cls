public with sharing class AccountDetail{
    //Added by Guna
    public static integer i = 0;
	
	public void createAccount(string vLum){
        //This is comment Line.
		Account acc = new Account();
		acc.name = vLum + 'Account';
		insert acc;
		system.debug('New Account Id is :::'+ acc.id);
	}
    
    public static void createContact(){
        contact con = new contact();
        con.lastName = 'Philips';
        con.firstName = 'Mussori';
        insert con;
        system.debug('New Contact is created with Id:::'+ con.id);
    }
    
    public static void searchContact(){
        contact con = [select id, lastname, firstname from contact where lastname = 'Philips' limit 1];
        system.debug('Contact record is::'+ con);
    }
	
}