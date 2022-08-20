({
  /*getResponse: function(component, base) {    
        var action = component.get("c.getCalloutResponseContents");
        action.setParams({
            "url": 'http://api.fixer.io/latest?base=' + base
        });
        action.setCallback(this, function(response) { 
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {      
                component.set("v.response", response.getReturnValue());             
                var getAllRates = component.get("v.response")['rates'];
                var CurrencyList = [];
                for (var key in getAllRates) {
                    CurrencyList.push(key + ' = ' + getAllRates[key]); 
                }      
                component.set("v.ListOfCurrency", CurrencyList);
            }
        });
        $A.enqueueAction(action);
    },*/
})