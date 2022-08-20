public with sharing class AccountVs {
   
@AuraEnabled(cacheable=true)
public static List<Account> callAccLwc(){
   
    return [select Name,Id from Account ];
    
}

} 
