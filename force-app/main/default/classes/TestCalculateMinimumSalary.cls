@isTest
private class TestCalculateMinimumSalary{
	
 @isTest
	static void testSalaryClass(){
		calculateMinimumSalary salaryClass = new calculateMinimumSalary();
		salaryClass.NoOfHours = 200;
		integer minSalary = salaryClass.calcSalary(100);
		system.assertEquals(minSalary, 20000);
		
	} 
	
	
}