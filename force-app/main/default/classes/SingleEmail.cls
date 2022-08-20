public class SingleEmail {
    public static void sendemail(){
        list<messaging.SingleEmailMessage> singleemaillist = new list<messaging.SingleEmailMessage>();
        string [] toAddresses = new string[]{'pragadeeshguhan11@gmail.com'};
        messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
        mail.setsubject('For SingleEmailMessage');
        mail.setPlainTextBody('Hello Everyone');
        mail.setToAddresses(toAddresses);
        singleemaillist.add(mail);
        messaging.sendEmail(singleemaillist);
        system.debug('test'+singleemaillist);
    }

    
 public static void fortemplate(){
     list<messaging.SingleEmailMessage> fortemp = new list<messaging.SingleEmailMessage>();
    EmailTemplate etemp = [select id,subject, body from EmailTemplate where Name = 'For New Joiners'];
     
     dotPrefix__Department__c dept = [select id,dotPrefix__Email__c from dotPrefix__Department__c where id = 'a0N2w000005wfHaEAI'];
     messaging.SingleEmailMessage deptmail = new messaging.SingleEmailMessage();
   //  dept.Name = 'Test Email Field';
    // Insert dept;
     deptmail.setTemplateId(etemp.Id);
     deptmail.setTargetObjectId(dept.id);
     fortemp.add(deptmail);
     messaging.sendEmail(fortemp);
     System.debug(fortemp);
     
}
     public static void formassemail(){
     list<messaging.MassEmailMessage> formass = new list<messaging.MassEmailMessage>();
    EmailTemplate etemp = [select id,subject, body from EmailTemplate where Name = 'For New Joiners'];
     
     Contact con = [select id,Name from Contact where Name = 'TestClass'];
     messaging.MassEmailMessage masmail = new messaging.MassEmailMessage();
     masmail.setTemplateId(etemp.Id);
     formass.add(masmail);
     messaging.sendEmail(formass);
     System.debug(formass);
     
}
}