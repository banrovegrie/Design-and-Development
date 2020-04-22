var n1=localStorage.getItem("on_load_counter");
if(n1===null) 
    n1=1;
else
	n1++;
 
localStorage.setItem("on_load_counter",n1);

console.log(n1);

document.getElementById("counter").innerHTML=n1;