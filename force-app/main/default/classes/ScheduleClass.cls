global class ScheduleClass implements Schedulable {
    global void execute(SchedulableContext SC) {
       List<dotPrefix__Employee__c> emplist = [select Id,name from dotPrefix__Employee__c  where dotPrefix__Food_Type__c = 'Breakfast;Dinner'];
        for(dotPrefix__Employee__c emp : emplist ){
            emp.dotPrefix__City__c = 'Chennai';
        }
        update emplist;
    }
}