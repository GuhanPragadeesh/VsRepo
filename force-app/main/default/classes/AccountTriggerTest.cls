@istest
public class AccountTriggerTest {
    @istest 
    static void inserttest(){
        Test.startTest();
        Account acc= new Account();
        acc.Name= 'test';
        insert acc;
        Test.stopTest();
        System.assertEquals(acc.id,[SELECT AccountID FROM Contact WHERE AccountID =: acc.id].AccountID);
           test.stopTest();   
}
}
/* main setup and static method 
List or set or map
for governer limits give start.testmethod n stop.testmethod 
inserting the dummy data for testing the data 
if any changes in the older records that should be in update value 
can add or call an error we can use object variable also with object
a.adderror('simple')
a.Name.adderror('simple with object')
*/