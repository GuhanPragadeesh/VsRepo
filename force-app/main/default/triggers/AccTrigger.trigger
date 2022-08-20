trigger AccTrigger on Account (after insert,after update) {
    AccountContact.triggerforacc(trigger.new);
    AccountContact.updateacc(trigger.new,trigger.oldmap);
     }