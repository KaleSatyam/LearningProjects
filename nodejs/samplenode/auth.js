function register(name)
{
    console.log("satyam suresh kale ")
    console.log(`user ${name} is registerd successfully`)

}
//console.log(register)

// exporting  sending the functionto module.js
//module.exports=register


//if we have multiple exports 

let login=function(name)
{
    console.log(`user ${name}is logged in`)
}

module.exports={
    //register=register,
    //login=login
    register,login
}

