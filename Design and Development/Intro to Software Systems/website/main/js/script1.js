var n=localStorage.getItem("on_load_counter");
if(n===null) 
    n=1;
else
	n++;
 
localStorage.setItem("on_load_counter",n);

console.log(n);

document.getElementById("counter").innerHTML=n;