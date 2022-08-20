import { api, LightningElement, track, wire } from 'lwc';
import getaccount from '@salesforce/apex/AccountVs.callAccLwc'

export default class DisplayText extends LightningElement {
    @wire(getaccount)
    accounts;
   @api passtring = 'this is display text';
 get responseReceived(){
       if(this.accounts){
             return true;
         } 
    
     }
     @api
      childmethod(){
         alert('test child');
     }
     @track details=['hello','welcome'];
     handleclick(event){
         event.target.button;
          this.details[1]='guhan';

     }
}