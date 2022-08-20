public class upperclass {
    public final string strw = 'hello test';
    public string callthevalue() {
        List<dotPrefix__Department__c> deptlist = new List<dotPrefix__Department__c>();
        dotPrefix__Department__c dept = new dotPrefix__Department__c();
        dept.Name = '/AWS1';+
        dept.dotPrefix__Team__c = 'AWS';
        deptlist.add(dept);
        insert deptlist;
        List<dotPrefix__Department__c> deptquery = [select id,Name from dotPrefix__Department__c where id in:deptlist];
        List<dotPrefix__Department__c> deptquery1 = [select id,Name from dotPrefix__Department__c where id = 'a0N2w000005wPu2EAE'];
        system.debug(deptquery); 
        delete deptquery1;
        system.debug(deptquery1); 
        return 'Inserted';  
    } 
    public string  callthevalue(integer num) {
        try{
            List<dotPrefix__Employee__c> emplist = new List<dotPrefix__Employee__c>();
            dotPrefix__Employee__c emp  = new dotPrefix__Employee__c();
            emp.Name = 'Arun';
            emplist.add(emp);
            insert emplist;
        }
        catch(DmlException e) {
            System.debug('Cant insert the record, transport picklist is empty'+e.getTypeName());
        }
        catch(Exception e){
            System.debug('Exception occured'+e.getMessage());
        }
        finally {
            system.debug('Executed Successfully');
        }
        return 'hello'; 
    }
    public static Integer objectc(){
        list<dotPrefix__Department__c> deptchild = new List<dotPrefix__Department__c>();
        deptchild = [select Name,dotPrefix__Team__c from dotPrefix__Department__c where Name = 'Support-SFDC'];
        system.debug(deptchild);
        if(!deptchild.isEmpty()){
            for(dotPrefix__Department__c dept1: deptchild){
                dept1.Name = 'Support-SFCC';
            }
        }
        update deptchild;
        System.debug(deptchild);
        return 11;
    }
    public static integer deletelist(){
        List<dotPrefix__Department__c> deptdelete = [select id,name from dotPrefix__Department__c where Name like '%/AWS%'ALL ROWS];
        system.debug(deptdelete);
        Undelete deptdelete;
        return 0;
    }
    public upperclass(){
       // strw = 'hello';
        system.debug(strw);
        system.debug('constructor');
    }
    public upperclass(integer num){
        system.debug('paramater constructor');
    }
}