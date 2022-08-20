({
    getevent : function(component, event, helper) {
        var compEvent = component.getEvent("sampleComponentEvent");
        compEvent.setParams({ "textevent": component.get("v.Text"),
                             "NumberEvent": component.get("v.num")
            
        });
        compEvent.fire();	
    }
})