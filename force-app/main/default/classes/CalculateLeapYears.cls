public class CalculateLeapYears {
    //logic for leap year
    //1. the number should return 0 when divided by 4
    //2. on top of condition #1, if the number is divided by 100 and returns 0 then that is not leap year
    //3. on top of condition #2, if the number is divided by 400 and returns 0 then that is leap year.
    

    public static void leapYearCalc(Integer startLY, Integer endLY){
        integer startYear = startLY;
        integer endYear = endLY;
        list<Integer> intLst = new list<Integer>();
        
        for(integer i = startLY; i <= endLY; i++){
            //system.debug(i);
            if(math.mod(i,4) == 0){
                if(math.mod(i,100) == 0 ){
                    if(math.mod(i,400) == 0){
                        intLst.add(i);
                    }
                }
                else{
                    intLst.add(i);
                }
            }
                       
        }
        
        system.debug(intLst);

        
    }
    
}