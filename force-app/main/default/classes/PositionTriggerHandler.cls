public class PositionTriggerHandler {

    public static void handleBeforeUpdate(map<id, position__C> newMap, map<id, position__C> oldMap){
        for(position__C pos:newMap.values()){
            if(pos.min_salary__C <> oldMap.get(pos.id).Min_salary__C){
                pos.comments__c = string.valueOf(oldMap.get(pos.id).min_salary__C);
            }

        }
    }
    public static void handleBeforeUpdateCheckMaxSalary(list<position__C> newList){
         for(position__C pos:newList){
            	if(pos.max_salary__C <=  pos.min_salary__C){
                pos.max_salary__C.addError('Max Salary should always be greater than Minimum Salary');
            }
        }

    }
    
    public static void handleBeforeInsertCheckMaxSalary(list<position__C> newList){
         for(position__C pos:newList){
            	if(pos.max_salary__C <=  pos.min_salary__C){
                pos.min_salary__C.addError('Minimum Salary should always be lesser than Max Salary');
            }
        }

    }
    
    //public static void processUpdateRecords(List<Position__c> updateList){
        /*if(Test.isRunningTest()){
            //unit testing alternative code goes here
            system.debug('This is the condition when using the test.isRunnungTest');
        } else {
            //execute this in ese condition
            system.debug('This is the condition when using else for the test.isRunnungTest');
        }*/
    //}
    
}