global class InboundEmailClass implements Messaging.InboundEmailHandler  {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email, 
                                                           Messaging.InboundEnvelope env){
    Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();

        string fromAdd = email.fromAddress;
        contact con = [select id,email,lastname from contact where email =: fromAdd limit 1];
        case c = new case();
        c.Subject=email.subject;
        c.Priority='High';
        c.Description=email.plainTextBody;
        insert c;
        return result;
     }

}