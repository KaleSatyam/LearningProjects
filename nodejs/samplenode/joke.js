{/* <div class="joke" id="joke">
            todays joke
        </div> */}
        {/* <button class="btn" id="btnjoke">Next Joke</button> */}

const  joke=document.querySelector('#joke');
const jokebtn=document.querySelector('#btnjoke')

// const setHeaders={
//     headers:{
//         Accept:"application/json"
//     }
// }

//     let newjoke=()=>{
//         console.log("in a joke btn");
//         fetch('https://icanhazdadjoke.com',setHeaders)
//         .then((res)=>res.json())
//         .then((data)=>{
//             joke.innerHTML=data.joke
//         })
//         .catch((error)=>{
//             console.log(error);
//         })
//     }





const setHeaders={
    headers:{
        Accept:"application/json"
    }
}

    let newjoke=async  ()=>{
        
        try{
            console.log("in a joke btn");
            const res=await fetch('https://icanhazdadjoke.com',setHeaders);
             const data = await res.json();
             joke.innerHTML=data.joke
        }catch(err){
           console.log(err)
        }
        


        
    }

jokebtn.addEventListener('click',newjoke);




newjoke();