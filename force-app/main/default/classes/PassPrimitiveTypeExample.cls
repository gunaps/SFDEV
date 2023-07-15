public class PassPrimitiveTypeExample {
    
    public static void debugStatusMessage(){
        string msg = 'Some Original Value';
        system.debug(msg + '<==> Some Original Value ');
        msg = processString(msg);
		//processString(msg);
        system.debug(msg + '<==> New Modified Value');
    }
    
    public static string processString(string s){
        s = 'New Modified Value';
        system.debug(s + '<==> New Modified Value');
        return s;
    }
    
}