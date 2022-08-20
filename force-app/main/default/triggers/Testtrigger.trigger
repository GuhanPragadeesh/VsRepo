trigger Testtrigger on dotPrefix__Department__c (before insert,after insert,after delete,before delete,after undelete,before update) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            system.debug('record inserted');
            system.debug(Trigger.new);
            system.debug(Trigger.newMap);
            system.debug(trigger.old);
            system.debug(trigger.oldMap);
        }
        if(trigger.isDelete){
            system.debug('record deleted');
            system.debug(Trigger.new);
            system.debug(Trigger.newMap);
            system.debug(trigger.old);
            system.debug(trigger.oldMap);
        }
        if(trigger.isUpdate){
            for(dotPrefix__Department__c deptupdate : trigger.new){
                if(deptupdate.dotPrefix__Team__c != trigger.oldMap.get(deptupdate.Id).dotPrefix__Team__c){
                    deptupdate.addError('Cant update the picklist');
                    
                }
            }
        }
    }
    if(trigger.isAfter){
        if(trigger.isInsert){
            system.debug('After record inserted');
            system.debug(Trigger.new);
            system.debug(Trigger.newMap);
            system.debug(trigger.old);
            system.debug(trigger.oldMap);   
        }
      /*  if(trigger.isDelete){
            system.debug('After Delete');
            system.debug(trigger.new);
            system.debug(Trigger.newMap);
            system.debug(trigger.old);
            system.debug(trigger.oldMap);   
        }*/
        if(trigger.isUndelete){
            system.debug('After UnDelete');
            system.debug(trigger.new);
            system.debug(Trigger.newMap);
            system.debug(trigger.old);
            system.debug(trigger.oldMap);   
        }
    }
    
}