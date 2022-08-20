public class AccountInsertLightning_Ctr {
    @AuraEnabled
    public static Account AcountInsert(String Name){
       Account acc = new Account();
        acc.Name = Name;
        insert acc;
        return acc;
    }
      
}