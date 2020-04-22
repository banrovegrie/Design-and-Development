function toggleSidebar()
{
	document.getElementById("sidebar").classList.toggle('active');
}

var status=2;

function changeImage() 
{
    if(status==2) 
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/2.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==3)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/3.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 65vw; height: 50vw;";
    	status++;
    }
    else if(status==4)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/4.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==5)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/5.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 40vw; height: 50vw;";
    	status++;
    }
    else if(status==6)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/6.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==7)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/7.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==8)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/8.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 45vw; height: 50vw;";
    	status++;
    }
    else if(status==9)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/9.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 45vw; height: 50vw;";
    	status++;
    }
    else if(status==10)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/10.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 51vw; height: 50vw;";
    	status++;
    }
    else if(status==11)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/11.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 57vw; height: 50vw;";
    	status++;
    }
    else if(status==12)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/12.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==13)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/13.jpg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==14)
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/14.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 60vw; height: 50vw;";
    	status++;
    }
    else if(status==15)
    {
        document.getElementById("imgClickAndChange").src="./js/slide/15.jpeg";
        document.getElementById("imgClickAndChange").style="width: 75vw; height: 35vw;";
        status++;
    }
    else
    {
    	document.getElementById("imgClickAndChange").src="./js/slide/1.jpeg";
    	document.getElementById("imgClickAndChange").style="width: 45vw; height: 60vw;";
    	status=2;
    }
}

function goTop() 
{
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}