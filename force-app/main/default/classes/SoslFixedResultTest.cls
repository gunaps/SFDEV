@isTest
private class SoslFixedResultTest{
	
	@isTest
	public static void testSoslFixedResults(){
			id[] fixedSearchResults = new id[1];
			fixedSearchResults[0] = '0015j00000gCMbkAAG';
			test.setFixedSearchResults(fixedSearchResults);
			
			list<list<sObject>> searchList = [find 'test' IN ALL FIELDS RETURNING Account(id, name where name = 'test' LIMIT 1)];
		
		
	}	
}