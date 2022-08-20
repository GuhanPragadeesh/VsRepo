public class Paymentreq {
    public static void trackid(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://flexifi--preprod.my.salesforce.com/services/apexrest/getPaymentDetails');
        req.setMethod('POST');
        req.setHeader('Content-Length','0');
        req.setHeader('Accept','application/json; charset=UTF-8');
        req.setHeader('Authorization', 'Bearer 00D3O0000004ijU!AQwAQAEKoMH1fiYHr1V7Mgy4.LWPusu2Qkz.XPQvLecqf_HlaARq440OSc6IKZQSRXCJ.EUQELFhjH1_3tTQZjngKRG_xqg_');
		req.setHeader('Content-Type','application/json;charset=UTF-8');
        String body= '{"trackingId":"QW25KIZuTYcSHNWb", "accountId":"227162" }' ;
        req.setBody(body);
          HttpResponse response = http.send(req);
         JSONParser parser = JSON.createParser(body);
       // Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(body);
            System.debug(response.getBody());
    }
}