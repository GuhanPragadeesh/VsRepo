import { api, LightningElement, track } from 'lwc';

export default class SimpleComponentFind extends LightningElement {
   @track contacts = [
        {
            Id: 1,
            Name: 'Amy Taylor',
            Title: 'VP of Engineering',
        },
        {
            Id: 2,
            Name: 'Michael Jones',
            Title: 'VP of Sales',
        },
        {
            Id: 3,
            Name: 'Jennifer Wu',
            Title: 'CEO',
        },   
    ];
   
    textmessage ='guhan';

    handleChange(event) {
       
        this.textmessage = event.target.value;
    }

    get textmessage(){
        var text = 'display string';
        return text;
    }

   
}