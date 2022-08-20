global class ForBatchClass implements Database.Batchable<sObject> {

    //collect the records to pass the interface method
    global  Database.QueryLocator start (Database.BatchableContext batch){
        
        return Database.getQueryLocator('Select dotPrefix__Email__c  from dotPrefix__New_Joine__c ');
        
    }
    global void execute(Database.BatchableContext batch,List<dotPrefix__New_Joine__c> emplist){ 
        for(dotPrefix__New_Joine__c emp :emplist){
            system.debug(emp);
            if(emp.dotPrefix__Email__c ==null){
            emp.dotPrefix__Email__c = 'testbatch@gmail.com';
                System.debug('executed');
        }
        }
       update emplist;
    }
    global void finish(Database.BatchableContext batch){
        
        System.debug('completed');
    }
}