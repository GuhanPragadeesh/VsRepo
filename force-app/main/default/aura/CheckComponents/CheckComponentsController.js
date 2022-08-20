({
    Click : function (component, event, helper) {
        helper.Clickhelper(component, event, helper);
        
    },
    handleLikeButtonClick : function (component) {
        component.set('v.liked', !component.get('v.liked'));
    },
    
    handleClick : function (cmp, event, helper) {
        var buttonstate = cmp.get('v.buttonstate');
        cmp.set('v.buttonstate', !buttonstate);
    },
    doInit: function(Component) {
       alert("Invokes before the Component");
    },
    followed: function (component){
    var buttonstate = component.alert("Followed");
},
    handleComponentEvent: function (component){
        var alerttext =event.getParam("textevent");
        window.alert(alerttext);
        var alertnum = event.getParam("NumberEvent");
        window.alert(alertnum);
    
    },
     applyCSS: function(cmp, event) {
        var cmpTarget = cmp.find('changeIt');
        $A.util.addClass(cmpTarget, 'changeMe');
    }
    
    });