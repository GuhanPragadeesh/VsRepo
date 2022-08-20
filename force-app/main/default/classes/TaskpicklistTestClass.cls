@isTest
public class TaskpicklistTestClass {
    @isTest
    public static void testclass(){
                Test.startTest();
        TaskpicklistTestClass tc = new TaskpicklistTestClass();
       dotPrefix__Employee__c  emp =new dotPrefix__Employee__c();
        emp.dotPrefix__Transport__c = 'Car';
         Map<string,List<dotPrefix__Employee__c>> displaymap = new  Map<string,List<dotPrefix__Employee__c>>();
        for(dotPrefix__Employee__c emprecord: [select Name,dotPrefix__Transport__c from dotPrefix__Employee__c]){
            displaymap.put(emprecord.dotPrefix__Transport__c,new list<dotPrefix__Employee__c>{emprecord});
        //   system.assertEquals(displaymap,emp.);
    
               }
    }

}