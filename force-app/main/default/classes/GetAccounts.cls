@restResource (urlMapping='/Accounts/*')

global class GetAccounts {
    
    @httpGet
    global static list<Account> displayAccounts(){
	
        List<Account> ListAccounts1;
    
    ListAccounts1 = [select name, Industry, phone from Account order by createdDate asc limit 10];
	return ListAccounts1;
}
}