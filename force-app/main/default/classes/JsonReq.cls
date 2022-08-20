public class JsonReq {
    
    public static void getfinal(){
        Http http = new Http();
        HttpRequest httpreq = new HttpRequest();
        httpreq.setendpoint('https://flexifi--preprod.my.salesforce.com/services/apexrest/initiateProcess');
        httpreq.setMethod('POST');
        httpreq.setHeader('Accept','application/json; charset=UTF-8');
        httpreq.setHeader('Content-Length', '0');
        httpreq.setHeader('Authorization', 'Bearer 00D3O0000004ijU!AQwAQAEKoMH1fiYHr1V7Mgy4.LWPusu2Qkz.XPQvLecqf_HlaARq440OSc6IKZQSRXCJ.EUQELFhjH1_3tTQZjngKRG_xqg_');
		httpreq.setHeader('Content-Type','application/json;charset=UTF-8');
      
       String body ='{ "accountId":"227162", "customerInfo":{ "name":"manager@dev2.com.preprod", "email":"manager@dev2.com", "mobileNumber":"7836801989" },"orderDetails":{"orderInvoiceID":"id000077","orderDescription":"Bike Gizzxer","orderInvoiceAmt":92000.00,"orderDate":"2018-12-29"}}';
        JSONParser parser = JSON.createParser(body);
        httpreq.setBody(body);
         HttpResponse response = http.send(httpreq);
     /*   while (parser.nextToken() != null) {
            if (parser.getCurrentToken() == JSONToken.START_OBJECT) {
                Customer cus = (Customer)parser.readValueAs(Customer.class);
                System.debug('customerinfo' + cus.customerInfo);
                System.debug('accountId'+cus.accountId);
                String ser = JSON.serialize(cus);
              System.debug('CustomerInfo: '+ ser);
                 Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(body);
                System.debug(results);*/
            System.debug(response.getBody());
            }
}