var data={};
var cnt=0;
function generate()
{
	var sub = {};
	sub.fname=document.getElementById("fullname").value;
	sub.skill=document.getElementById("skill").value;
	sub.prof=document.getElementById("pro").value;
	console.log(sub);
	let refDatastr = localStorage.getItem("refData") || "[]";
	let refData = JSON.parse(refDatastr);
	refData.push(sub);
	refDatastr = JSON.stringify(refData);
	localStorage.setItem("refData", refDatastr);
	return true;
}

function Display()
{
	let refDatastr = localStorage.getItem("refData") || "[]";
	console.log("YES");
	console.log(refDatastr);
	let refData = JSON.parse(refDatastr);
	let currentTable = document.querySelector("tbody");
	refData.forEach((sub)=> {
	currentTable.innerHTML += `<tr>
<td>${sub.fname}</td>
<td>${sub.skill}</td>
<td>${sub.prof}</td>
</tr>`
})
}

window.onload = Display;
