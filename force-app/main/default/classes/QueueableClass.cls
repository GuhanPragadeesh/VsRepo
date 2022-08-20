public class QueueableClass implements Queueable {
    public void execute(QueueableContext que){
        List<dotPrefix__Employee__c> emplist = [select id,Name from dotPrefix__Employee__c];
        system.debug(emplist);
    }
    

}