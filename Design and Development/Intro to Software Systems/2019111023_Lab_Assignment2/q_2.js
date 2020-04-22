function altSpaceToUnderscore(str_input)
{
	var str=str_input;
	str=str.trim();
	var start=-1, end=-1;

	for(var i=0;i<str.length;i++)
	{
		if(start===-1 && str[i]!=' ')
			start=i;
		if(str[i]!=' ')
			end=i;
	}

	var count=0;
	for(i=start;i<=end;i++)
	{
		if(str[i]==' ')
		{
			count++;
			if(count%2===0)
				str=str.substring(0,i)+'_'+str.substring(i+1);
		}
	}

	//print (str);
	return str;
}
//altSpaceToUnderscore("  Hello  there , how are  you ! !   ");