const addbutton = document.getElementById("add");


const updateLSData=()=>{
    const textareadata=document.querySelectorAll('textarea');
    const notes=[];

    textareadata.forEach((note)=>{
        return notes.push(note.value);
    })

    // console.log(notes)

    localStorage.setItem('notes',JSON.stringify(notes))
}




const addnewnote = (text='') => {
  const node = document.createElement("div");

  node.classList.add("note");

  const htmldata = `<div class="operation">
    <button class="edit"><i class="fas fa-edit"></i></button>
    <button class="delete"><i class="fas fa-trash-alt"></i></button>
    </div>

    <div class="main ${text ? "" : "hidden" }"></div>

    <textarea class="${text ? "hidden" : "" }"></textarea>`;

    node.insertAdjacentHTML('afterbegin',htmldata);

    // getting references
    const editbtn=node.querySelector('.fa-edit');
    const trashbtn=node.querySelector('.fa-trash-alt');
    const main=node.querySelector('.main');
    const textArea=node.querySelector('textarea');

    // delete
   
    trashbtn.addEventListener('click',()=>{
        node.remove();
        
        updateLSData();
    });

    // toggle usingedit
        textArea.value=text;
        main.innerHTML=text;

        editbtn.addEventListener('click',()=>{
            main.classList.toggle('hidden');
            textArea.classList.toggle('hidden');
        })

        // getting value of textarea
        textArea.addEventListener('change',(event)=>{
            const value= event.target.value;
            console.log(value);
            main.innerHTML=value;

            updateLSData();
        })


    document.body.appendChild( node);
    console.log(node);
};


//get data  from localstorage
     const notes=  JSON.parse(localStorage.getItem('notes'));
         if(notes)
         {
             notes.forEach((note)=> addnewnote(note))
         }
    

addbutton.addEventListener("click", () => addnewnote());
