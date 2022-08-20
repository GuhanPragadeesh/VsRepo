public class DepartmentClass {
    public static void depttrigger(list<dotPrefix__Department__c> deptlist){
        for(dotPrefix__Department__c dept:deptlist){
            if(dept.dotPrefix__Team__c==null){
                dept.adderror('select any value in picklist');
            }
        }
    }
}