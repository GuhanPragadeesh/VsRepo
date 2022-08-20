public class SOQL {
    public static string callsoql(){
        //query
        List<dotPrefix__Department__c> deptquery1 = [select id,Name from dotPrefix__Department__c where id = 'a0N2w000005wPu2EAE'];
        system.debug(deptquery1);
        List<dotPrefix__Department__c> depquery = [select id,name from dotPrefix__Department__c where Name like 'support%' OR dotPrefix__Team__c = 'SFDC' ];
        system.debug(depquery);
        //multi select
        List<dotPrefix__Employee__c> empmulti = [select id,name from dotPrefix__Employee__c where 	dotPrefix__Food_Type__c = 'Breakfast;Dinner'];
        System.debug(empmulti);
        //not
        List<dotPrefix__Employee__c> empquery = [select dotPrefix__Transport__c,name from dotPrefix__Employee__c where dotPrefix__Transport__c NOT IN ('Car')];
        system.debug(empquery);
        //parent child
        List<Account> acclist = [Select id,Name,Phone,(select lastName,Phone from Contacts) from Account];
        system.debug(acclist);
        // List<dotPrefix__Employee__c> emparent = [Select Name,(select Name from Companies__r) from dotPrefix__Employee__c ];
        // order by
        List<dotPrefix__Employee__c> emporder = [select Name from dotPrefix__Employee__c where dotPrefix__Pay__c >= 25000 ORDER BY Name DESC];
        system.debug(emporder);
        //limit offset
        List<dotPrefix__Employee__c> empofset = [select name from dotPrefix__Employee__c where name !=null limit 5 offset 4];
        system.debug(empofset);
        List<dotPrefix__New_Joine__c> empmonth = [SELECT Name,dotPrefix__Number_of_Person_You_Should_Report__c FROM dotPrefix__New_Joine__c  WHERE CreatedDate = LAST_MONTH];
        system.debug(empmonth);
        return 'query executed';        
    } 
    public static Integer sosl(){
        List<List<sObject>> slist = [Find 'test' In Name Fields returning dotPrefix__Employee__c(Name)];
        System.debug(slist);
        
        
        return 1;
    }
}