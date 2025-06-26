// var _myname="ssatyam";
// var 1myname="styam"; //not working
// var $myname="satyam"
// var  _1m1y__name="satyam"

const { lastIndexOf } = require("cli-color/beep");

// console.log(_my__name);


// var add=10+"20"; //concat
// var m=9 - "5"  //  bug
// var c="java"+ "script"  //concat
// var s=" "+ " "  
// var z=" "+ 0
// var m="Satyam" - "kale"//nan

// var b=true+true  //2
// var b=true + false //1
// var b = false +true  //1
// // var b=false-true;  //-1
// var b=true - false  //1
// console.log(b);


// var year=2020;

// if(year%4===0)
// {
//     if (year%100==0) {
        
//             if (year%400==0) {
//                 console.log(`year is leap year ${year}`);
//             } else {
//                 console.log(`year is not leap year ${year}`);   
//             }

//     } else {
//         console.log(`year is leap year ${year}`);
//     }
    
// }else{
//     console.log(`year is not leap year ${year}`);
// }


// if(name=null)
// {
// console.log("we won the game");
// }else{
//     console.log("we not won");

// }



// var age=2 ;

// var eligible=(age>=18)?'you are eligible to vote':'you not eligible to vote';

// console.log(eligible);
// var num=1;
// debugger;
// while(num<=100){
//     console.log(num);
//     num++;
// }


// var num=12;

// do{
//     console.log(num);
//     num++;
// }while(num<=10)


// for(var i=1;i<=10;i++)
// {
//     console.log(num*i);
// }


// function sum()
// {
//     a=12
//     b=23
//     total=a+b
//     // console.log(total);
//     return total;
// }
// var s=sum();

// console.log("my sum is  "+s);

// var sum= ()=>{
//     a=12
//         b=23
//         total=a+b
//         // console.log(total); 
//         return total;  
// }

// var s=sum();

// console.log(sum());

// var sum= ()=> `my sum is ${(a=10) + (b=13)}`

// console.log(sum());

//***** array methods */

// var data=['s','d','e','w','q','r']
// console.log(data.indexOf('r','s'));


// console.log(data.lastIndexOf('s',));

// const prices = [200,300,350,400,450,500,600];


// const findElem = prices.find((currVal) =>  currVal < 400 );
// console.log(findElem);

// console.log(  prices.find((currVal) => currVal > 700 )  );

// const newPriceTag = prices.filter((elem, index) => {
//   return elem < 1000;
// })
// console.log(newPriceTag);

// const pricetag=prices.filter((elem)=>{
//     return elem < 400;
// })

// console.log(pricetag);


// var arr=[43,23,54,14,13,65,76]

// var sq=arr.map((elem,index,arr)=>{
//         // return `the square of ${elem} at ${index} in [ ${arr} ]    is       ${elem ** 2}`

// })
// console.log(sqroot);

// var sqr=arr.map((elem)=>
// {
//             return elem;
// })

// console.log(sqr);

// var sqr=arr.map((elem)=>
// {
//             return   Math.sqrt(elem);
// })

// console.log(sqr);

var data=[2,4,5,11,7,8]


// let [d,q]=data;
console.log(data[4]);

// var myarr=data.map((cur)=>{
//     return  cur*2;
// }).filter((num)=>{
//     return num >10;
// })

// var myarr=data.map((cur)=> cur*2).filter((num)=>num >10)

// console.log(myarr);

// var myarr=data.map((elem,index)=>{
//         return  elem * 3;
// })

// console.log(data);
// console.log(myarr);


// var sum=data.reduce((accumulator,elem,index,arr)=>{
//             return accumulator;
// })
// console.log(sum);

// let str="lorem300 hdhdj kkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk kkkkkkkkkkkkkkoioioioioioioio io io  ioioi o oio io odifyfggsdhbdh bdhfbdhdhdbfhdhfgdgacbdhcbk  uhdhfdaijaeue elsjahh";

// let s="satyam"
// // console.log(str.search("300"));
// console.log(str.slice(0,280));


// let str="my name is                 satyam  "

// let res=str.split(" ");

// console.log(res);

// console.log(str.trim());
