import { api, LightningElement } from 'lwc';

export default class ComponentProperties extends LightningElement {
    @api name1 ='test';

   /* click(){
        var childcomp = this.template.querySelector('c-display-text');
        childcomp.childmethod();
    }*/
}