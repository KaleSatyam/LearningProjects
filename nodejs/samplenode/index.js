//http module

let http=require('http')

//get filesystem
let fs=require("fs")

//for getpath
let path=require("path")



let app=http.createServer((req,res)=>
{

//     res.writeHead(200,
//         {
//             "Content-Type":"Text/"
//         })


//     console.log(req.url)
//     // for getting html file into the folder
//     //first arg get directory,second getfolder name,third get files
//     // fs.readFile(path.join(__dirname,"index.html"),(err,content)=>


//     if(req.url=='/')
//     {
//         fs.readFile(path.join(__dirname,"index.html"),(err,content)=>
// {
//     if(err)
//     {
//         throw err;

//     }
//     res.end(content)
// })
//     } else if(req.url=='/about')
//     {
//         fs.readFile(path.join(__dirname,"about.html"),(err,content)=>
// {
//     if(err)
//     {
//         throw err;

//     }
//     res.end(content)
// })
//     } 
    
 
// })

//         var port=process.env.PORT || 4000

// app.listen(port,()=>{
//         console.log(`listenning on port ${port} `)

    
console.log(path.dirname(__filename))


})