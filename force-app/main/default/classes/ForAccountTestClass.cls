@isTest  //seeAllData=True
public class ForAccountTestClass {
    @isTest
    public static void testacc(){
        Account a = new Account();
        a.Name = 'TestClass';
        Insert a;
      Account acc= [select id,Name from Account Where Name = 'TestClass'];
        AccountTestClass.accupdate(acc);
     //  Account acc= [select Name from Account where Name = 'TestClass' AND BillingCountry = 'India'];
        
    }
}