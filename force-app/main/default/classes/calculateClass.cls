public class calculateClass {
	//Project:Initial Date: Jira Story: method that calculates sum
    public static void calculateSum(){
        Integer val1 = 12;
        Double val2 = 18.2;
        
        Double add = addition(val1, val2);
        
        system.debug(add);
    }
    
    private static double addition(Integer a, double b){
        double c = a+b; 
        return c;
    }
    
}