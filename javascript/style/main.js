document.write("this is java script code area")
console.log("satyam")

var s=455
console.log(s)

var i="satyam is axe"
console.log(i)


var marks = {
name : "satyam",
city : "Pune" ,
pincode : 411062
}
console.log(marks)
//  prompt(i)

 var arr=[1,12,3,4,7]
 arr.forEach(element => {
     console.log(element)
 });
 console.log(arr)


 //fuctions in javascript
function checkage( age)
{
        if(age > 18)
        {
            console.log("this is adult")
        } else if(age<=18)
        {
                console.log("this is in child ")
        }else 
        {
            console.log("this is old man")
        }
}


console.log(checkage(50))

var date =new Date()
console.log(date)

window.onload=function(){
    console.log("document is loaded")
}

//local storage 

var obj={
    name:"shyam",
    id:1
}
console.log(obj)
var js=JSON.stringify(obj)
console.log(js)
var parsed=JSON.parse(`{"name":"shyam","id":1,"maina":"kale"}`)
console.log(parsed)