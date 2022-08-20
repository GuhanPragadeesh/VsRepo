({
onHandleClick1 : function(component, event, helper) {
var action = component.get('c.getres');
action.setCallback(this, function(response){
var state = response.getState();
if( (state === 'SUCCESS' || state ==='DRAFT') && component.isValid()){
var responseValue = response.getReturnValue();
}
});
$A.enqueueAction(action);
}
})