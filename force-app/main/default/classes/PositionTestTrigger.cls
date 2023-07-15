@isTest
public class PositionTestTrigger{
	@isTest
	static void updateMinimumSalary(){
        
        //List<position__C> pl = system.test.loadData(position__C.sobjectType, 'Position_List');
        positionTestTrigger.insertPositionRecord();
		
		List<position__C> positionListToUpdate = new List<Position__C>();
		
		for(position__C pstn: [select min_salary__C from position__C]){
			pstn.min_salary__C = 30000;
			positionListToUpdate.add(pstn);			
			}
	system.test.startTest();
		update positionListToUpdate;
	system.test.stopTest();
	}
	static void insertPositionRecord(){
		list<position__C> positionListToInsert = new List<Position__C>();
		for(integer i=0; i<100; i++){
			position__C pos = new Position__C();
			pos.name = 'Salesforce Developer'+i;
			pos.min_salary__C = 20000;
			
			positionListToInsert.add(pos);
		}
		insert positionListToInsert;
	
}
}