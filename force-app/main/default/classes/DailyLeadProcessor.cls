global class DailyLeadProcessor implements Schedulable {


    global void execute(SchedulableContext ctx){
        List<Lead> leadList = [Select id from Lead where LeadSource = null LIMIT 200];
        System.debug('LeadList will null LeadSource:' + leadList);
            List<Lead> emptyList = new List<Lead>();

        if(!leadList.isEmpty()){
            for(Lead l : leadList){
            l.LastName = 'SchedulableList';
            l.Company = 'YourSongs';
            l.LeadSource = 'Dreamforce';
            l.Status='Working - Not Contacted';
            emptyList.add(l);
         }
        update emptyList;
        }
    }
 }