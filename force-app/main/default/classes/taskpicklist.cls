public class taskpicklist {
    public static  Integer pickvalue(){ 
       /* List<dotPrefix__Employee__c> emplistt = [select toLabel(dotPrefix__Transport__c) FROM dotPrefix__Employee__c];
        system.debug(emplistt);
        Schema.DescribeFieldResult F = dotPrefix__Employee__c.dotPrefix__Transport__c.getDescribe();
        List<Schema.PicklistEntry> P = F.getPicklistValues();
        system.debug(P);
        Map<String,List<dotPrefix__Employee__c>> listmap = new  Map<String,List<dotPrefix__Employee__c>>();*/
     
        Map<string,List<dotPrefix__Employee__c>> displaymap = new  Map<string,List<dotPrefix__Employee__c>>();
        for(dotPrefix__Employee__c emprecord: [select Name,dotPrefix__Transport__c from dotPrefix__Employee__c]){
            displaymap.put(emprecord.dotPrefix__Transport__c,new list<dotPrefix__Employee__c>{emprecord});
            System.debug(displaymap);
        
        }
       
            return 1;
        }
    }