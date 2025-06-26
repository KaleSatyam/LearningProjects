const counter=document.querySelectorAll('.counter')

counter.forEach((cnt)=>{
    
    // console.log(cnt);
    cnt.innerHTML=0


const updatecounter=()=>{

    const targetcnt=+cnt.getAttribute('data-target');

    // console.log(typeof(targetcnt));
    let startingcnt=Number(cnt.innerHTML);
    
    let incr=targetcnt/100;

    if(startingcnt < targetcnt)
    {
               cnt.innerHTML=`${Math.round(startingcnt + incr)}`

        setTimeout(updatecounter,50);

    }
        else{
            cnt.innerHTML=targetcnt;
        }

    }

    updatecounter();

})