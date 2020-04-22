function getMeNextFirst(str_input)
{
	var str=str_input;
	str=str.trim();
	var arr=[];
	var  s="";
	var flag=false;

	for(var i=0;i<str.length;i++)
	{
		if(str[i]!=' ')
		{
			if(flag)
			{
				s=s+str[i];
				arr.push(s);
				s="";
			}
			else
				s=s+str[i];	
			flag=false;
		}
		else
			flag=true;
	}
	arr.push(s);
	
	str=arr.join(" ");
	//print (str);
	return str;
}
//getMeNextFirst("Hello world !!");