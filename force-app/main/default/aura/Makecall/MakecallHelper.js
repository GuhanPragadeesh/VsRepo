({
onHandleClick : function(component, event, helper) {
var action = component.get('c.Callout');
action.setCallback(this, function(response){
var state = response.getState();
if( (state === 'SUCCESS' || state ==='DRAFT') && component.isValid()){
var responseValue = response.getReturnValue();
var responseData = JSON.parse(responseValue);
alert(responseData);
console.log(responseData);
} else if( state ==='INCOMPLETE'){
console.log("User is offline, device doesn't support drafts.");
} else if( state ==='ERROR'){
console.log('Problem saving record, error: ' +JSON.stringify(response.getError()));
} else{
console.log('Unknown problem, state: ' + state +', error: ' + JSON.stringify(response.getError()));
}
});
$A.enqueueAction(action);
}
})