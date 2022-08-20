import { LightningElement } from 'lwc';

export default class TestComponent extends LightningElement {}

var str='guhan';
console.log(`name${str}`);


/*
    let t=function()
    {
console.log("function expression");
}
t();

var arr=()=>{
    console.log("arrow");
}
arr();
var paraa=str=> console.log(`hello str`);
paraa('string');

var addar=(x,y)=>{
    console.log(`sum ${x+y}`); 
}
addar(20,10);

function first(str){
    return str
}

function second(num){ the got the same pepole 
    return num;
}

function call(callback){
console.log(callback('text'));
console.log(callback(133));
}
call(first)
call(second)

//foreach 
var listarr=['first','second','third'];
listarr.forEach(function(list){
    console.log(list)
}) 
let emp=['emp1','emp2','emp3'];
let [one,two,...others]=emp;
console.log(one);
console.log(others)

//object inside function     

var obj={
    name :'guhan',
    display : function(){                 
        console.log(this.name);     //can't access using the arrow function 
    } tge tdone  
} theywdfn the th nthe thus cabn't be dine 

the devine 
 obj.display();
 console.log(obj)

 */

