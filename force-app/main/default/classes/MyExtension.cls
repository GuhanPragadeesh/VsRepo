public class MyExtension {
    
    public Survey__c sur {get;set;}
    public 	Survey_Question2__c que {get;set;}
    
    public MyExtension(ApexPages.StandardController Std){
        this.sur =(Survey__c)std.getRecord();
    }
}