public class BusScheduleCache {
    
    private Cache.OrgPartition part;
    
    public BusScheduleCache(){
        this.part=Cache.Org.getPartition('local.BusSchedule');
    }
    
    public void putSchedule(String busLine, Time[] schedule){
        part.put(busLine,schedule);
    }
    
    public Time[] getSchedule(String busLine){
        Time[] bsLnSch= (Time[])part.get(busLine);
        if(bsLnSch!=null){
            return bsLnSch;
        }else{
            return new Time[]{Time.newInstance(8,0,0,0), Time.newInstance(17,0,0,0)};
        }
  
    }

}