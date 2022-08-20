import { LightningElement,track } from 'lwc';
import { company } from './second';

export default class DataBinding extends LightningElement {
show=true;
name1='Guhan';
@track details = {
    phone:789456122,
    age:23,
    Address: {
    street:'6th cross',
    city:'blr'
}
}

@track Namelist=['guhan','pragadeesh']; 
//getter
get list(){
    return this.Namelist[0]; 

}
handlename(event){
    this.name1=event.target.value;
 
}
handleclick(event){
    if(event.target.name="button1"){
       this.Namelist[0]='welcome';
       alert(company)
    }
    else if(event.target.name="button2"){
    this.show=false;
       this.details.Address.city='cbe';
       alert('check city and text')
    }

}

}