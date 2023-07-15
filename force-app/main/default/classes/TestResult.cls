@isTest
private class TestResult{

	@isTest
	static void testNegative(){
	string resTest = PassOrFail.results(-10.0);
	system.assertEquals('INVALID',resTest);
	}
	
	@isTest
	static void testGreaterThan100(){
	string resTest = PassOrFail.results(111.0);
	system.assertEquals('INVALID',resTest);
	} 
	
	@isTest
	static void TestPass(){
	string resTest = PassOrFail.results(54.0);
	system.assertEquals('QUALIFIED',resTest);
	}
	
	 @isTest
	static void TestFail(){
	string resTest = PassOrFail.results(20.0);
	system.assertEquals('NOT QUALIFIED',resTest);
	}
}