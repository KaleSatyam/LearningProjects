

const  thermometer= ()=>
{
    let temp=document.getElementById('thermo');
    temp.innerHTML=".";

    setTimeout(() => {
        temp.innerHTML="..";
        temp.style.color="yellow"
    }, 1000);

    setTimeout(() => {
        temp.innerHTML="...";
    }, 2000);

    setTimeout(() => {
        temp.innerHTML="....";
    }, 3000);

    setTimeout(() => {
        temp.innerHTML=".....";
        temp.style.color="#d63031";
    }, 4000);
    
}

setInterval(thermometer,5000);



thermometer();