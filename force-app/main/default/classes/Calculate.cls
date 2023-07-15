public class Calculate {
    
    public Calculate(){
        
    }
    
    public Calculate(string x){
        
    }   
    
   public Calculate(integer y){
        
    }  
    
    public static void calcSum(){
        Integer a = 10;
        Double b = 20;
        
        Double total = sumTwoNumbers(a,b);
        system.debug('total value is::'+ total);
    }
    
    public static double sumTwoNumbers(integer x, Double y){
        double d = x+y;
        return d;
    }

}