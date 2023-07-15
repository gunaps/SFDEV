Public class PassOrFail{

    Public static string Results(Decimal marks){
        
        String res= 'INVALID';
        If(marks < 0)
        {
            res = 'INVALID';
            Return res;
        }
        If(marks > 100)
        {
            res = 'INVALID';
            Return res;
        }
        If(marks > 40)
        {
            res = 'QUALIFIED';
        }
        If(marks < 40)
        {
            res = 'NOT QUALIFIED';            
        }
     Return res;
        
    }
    
}