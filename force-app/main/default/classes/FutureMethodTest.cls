global class FutureMethodTest {
    @future
    public static void futuretest(){
        List<dotPrefix__Employee__c> emplist = [select id,name from dotPrefix__Employee__c where name = 'test'];
        system.debug(emplist);
        
    }
    @future 
    public static void checklimits(){
        for(integer i=0;i<201;i++){
            dotPrefix__Employee__c emp = [select id,name from dotPrefix__Employee__c];
            system.debug('Records'+emp);
        }
    }
    
    @future(callout=true)
    public static void createuser(){
        Profile pro = [select id from Profile where Name = 'Chatter Free User'];
        //UserRole ur = [select id from UserRole where Name ='Manager'];
        User newuser = new User(lastname ='FutureUser',alias ='future',email ='Testfuturemethod@gmail.com',username ='test123future1@gmail.com',profileid =pro.Id,emailencodingkey='UTF-8',languagelocalekey='en_US', localesidkey='en_US',timezonesidkey = 'Asia/Kolkata');
        System.debug(newuser);
        insert newuser;
    }
      @future(callout=true)
    public static void deleteuser(){
        User deleteid = [select id from User where lastname ='FutureUser'];
        system.debug(deleteid);
      // delete deleteid; //dml operation can't be deleted for user
    }
}