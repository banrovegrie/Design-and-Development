function fifthDay()
{
    var d=new Date();
    var a=d.getDay();
    a=(a+5)%7;
    
    var str=["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

    //print (str[a]);
    return str[a];
}
//fifthDay();