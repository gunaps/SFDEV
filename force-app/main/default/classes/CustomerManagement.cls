public class CustomerManagement {
    string custName;
    public void insertCustomer(string nameInput){
        //declare the variables
        list<customer__C> custList = new List<Customer__C>();
        integer i = 0;
        while (i < 5){
        //this.custName = nameInput;
        customer__c newCust = new Customer__c();
        newCust.name = nameInput + i;
        newCust.active__C = true;
        newCust.annual_revenue__c = 1000+ i;
        newCust.email__c = custName+i+'@gmail.com';
        newCust.Phone__c = '8767668677';
        newCust.Location__c = 'India';
            custList.add(newCust);
            i++;
            }
        insert custList;
    }
        public void insertCustomerFor(string nameInput){
            this.custName = nameInput;
            List<customer__c> newCustList = new List<Customer__C>();
            
            for(Integer i= 0; i < 6; i++){
                customer__c newCust = new Customer__C();
                newCust.name = custName;
                newCust.active__c = true;
                newCust.Annual_Revenue__c = 2000 + i;
                newCust.Email__c = custName + i + '@gmail.com';
                newCust.Phone__c = '987987877';
                newCustList.add(newCust);
 
            }
			insert newCustList;            
            
    }
    string newLocation;
    public void updateCustomer(string location){
        this.newLocation = location;
        customer__C newCC = [select id, location__C from customer__C where name = 'guna4'];
        newCC.location__c = newLocation;
        update newCC;
    }
    string nameInp;
    public void upsertCustomers(string nameInput){
        this.nameInp = nameInput;
        list<customer__C> CList = [select id, name from customer__c where name in ('Guna3', 'Guna4')];
        list<customer__C> upsertList  = new List<customer__C>();
        integer i = 0;
        do {
        customer__c newCust = new Customer__c();
        newCust.name = nameInp + i ;
           newCust.Location__c = 'Europe';
            newCust.email__c = nameInput + '@email.com';
        	upsertList.add(newCust);
            
            if(clist.size() > 0){
                customer__c upCust = new Customer__C();
                upcust.id = clist[i].id;
                upCust.name = clist[i].name + i + nameInp;
                upsertList.add(upCust);
 				
            	}
            i++;
            }
        while (i < CList.size());
        upsert upsertList;
    }

}