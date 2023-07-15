public class EmailSending {

    @InvocableMethod(label='Email to Opportunity Team' description='Return list of email Ids')
    public static void sendEmail(list<id> OpptyId){
        list<OpportunityTeamMember> oOTM = [SELECT UserId,user.email, user.name,TeamMemberRole FROM OpportunityTeamMember where OpportunityId in: OpptyId];
        list<id> idList = new list<id>();
        list<string> EmailList = new list<string>();
        
        for(OpportunityTeamMember otm: oOTM){
            idList.add(otm.userid);
        }
        
        list<messaging.SingleEmailMessage> emails = new list<messaging.SingleEmailMessage>();
        
        for(user usr: [select id, email from user where id in: idList]){

            messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
            
            emailTemplate emailTemp = [SELECT Id, Name, DeveloperName FROM EmailTemplate where DeveloperName = 'Opportunity_Team_email'];     
            mail.setTemplateId(emailTemp.id);
            mail.settargetobjectid(usr.id);
            //mail.setToAddresses(EmailList);
            mail.setReplyTo('training.e2022@gmail.com');
            mail.setSenderDisplayName('Babu');
            list<string> ccAdress = new list<string>{'training.e2022@gmail.com'};
            mail.setCCAddresses(ccAdress);
            mail.setsaveAsActivity(false);
            mail.setSubject('Need Response real quick');         
            //string body = 'Dear ';
            //mail.setHtmlBody(body);
           
            emails.add(mail);
        	}
            list<Messaging.SendEmailResult> messages = Messaging.sendEmail(emails);          
            
        }
                
    }