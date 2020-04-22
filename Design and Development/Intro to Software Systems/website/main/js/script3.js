var n2=localStorage.getItem("on_load_counter");
if(n2===null) 
    n2=1;
else
	n2++;
 
localStorage.setItem("on_load_counter",n2);

console.log(n);

document.getElementById("counter").innerHTML=n2;