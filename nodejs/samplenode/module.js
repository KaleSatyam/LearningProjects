// // npm modules

// const color= require('cli-color')
// console.log(color.redBright('satyam kale'))

// //local module
// const get=require('./auth')
// get.register("pratibha")
// get.login('satyam')

//core modules
let path =require('path')
//         //dirname
//         console.log(`folder name =`,path.dirname(__filename) )
//         //filename
//         console.log(`file name =`,path.basename(__filename) )


//         //extension
//         console.log(`extension name =`,path.extname(__filename) )

//         //parse
//         console.log(`parse =`,path.parse(__filename) )


    //join
    // console.log(`join :`,path.join(__dirname,`order`,`module.js`) )

//file system
    //create folder

 const fs= require('fs')
    
 //make a diractory
//  fs.mkdir(path.join(__dirname,'/test'),(err) =>{
//      if(err){
//          console.log("something went wrong.....")
//      } else
//      console.log("folder created....")
//  })

    //create file
    // fs.writeFile(path.join(__dirname,"/test","test.txt"),"hello node",(err)=>  {
    //     if(err)
    //     {
    //         throw err
    //        // console.log("something went wrong")
    //       //  return
    //     }

    //     console.log("file created")
    // })

    //appending data in file

    // fs.appendFile(path.join(__dirname,"/test","test.txt"),"more data life is zund",(err)=>
    // {
    //     if(err)
    //     {
    //         throw err
    //     }
    //     console.log("data inserted")
    // })


    //read file
        // fs.readFile(path.join(__dirname,"/test","test.txt"),(err,data)=>
        // {
        //     if(err)
        //     {
        //         throw err;

        //     }
            // or type third variable in method 'utf-8'
        //     console.log(data.toString())
        // })

//operating system module
// let os=require('os')
// console.log(os.type())
// console.log(os.platform())
// console.log(os.arch())
// console.log(os.arch())
// console.log(os.type())

// cpu
// console.log(os.cpus())

// //free memory
// console.log("free memory" ,os.freemem())

// //total memory
// console.log("total memory",os.totalmem())

// console.log(os.uptime())

//events module

// let emitter=require("events")
//  let myemitter=new emitter()


//   myemitter.on("register",data=>
//   {
//     console.log(data)

//   })

//   //calling emitter
//   myemitter.emit("register",{

//         data :`satyamkalesk`

//   })


// class auth extends emitter{
//     login(user)
//     {
//         console.log("login successfully")
//         this.emit("login",user)
//     }
// }



// let authen=new auth()

// //lisyening emitter
// authen.on("login",(data)=>{
//     console.log(`sending email to ${data}`)
// })



// authen.login("satyam kale")

 // http module





