public class Calculate1 {

    public static void calcsum()
    {
		integer a = 10;
        integer b = 20;
        
        integer total = sumtownumbers(a,b);
        system.debug('total value is ' + total);
    }
    
    public static integer sumtownumbers(integer x, integer y)
    {
 		return x+y;
	}
    
    
}