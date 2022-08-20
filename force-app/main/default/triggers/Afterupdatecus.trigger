trigger Afterupdatecus on Customer__c (before insert) {
List<InVoice__c> invoclist = new List<InVoice__c>();
    for(Customer__c cus:Trigger.new){
        if(cus.Status__c =='Active' && trigger.oldmap.get(Cus.id).Status__c =='Inactive'){
            InVoice__c invo = new Invoice__c();
            invo.Status__c='Pending';
            invo.InVoice_Description__c = 'trigger updated';
            invo.Customer__c = cus.id;
            invoclist.add(invo);
        }
    }
    insert invoclist;
}