<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.bid.value=="null"){
alert("Please Enter Ur Name");
document.f.uname.setFocus=true;
}
if(document.f.pwd.value=="null"){
alert("Please Enter Ur Password");
return false;
}
if((document.f.bid.value=="null")||(document.f.pwd.value=="null"))
	{
alert("Please Enter Username& password");
document.f.uname.setFocus=true;
}
}
</script>
<BODY >
<br><br>
<center>
<BR><BR>
 
 <b><h2><u>WELCOME TO E-TRANSACTION INTERFACE</u></h2></b></font>
<br>
 
<br><br>

<br>
<form  method=post action="bloginch.jsp" name="f" onSubmit='return call()'>
 <table width="40%" cellpadding="5" cellspacing="5">
 <colgroup span=2 >
 <tr>
 <td><b>Username:</b></td><td><input type="text" name="bid" ></td>
</tr>
 
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr>
<tr> 
<td><b> Select Bank:</b></td><td><SELECT NAME="bl"><option>ICICI</option>
<option>UTI</option>
<option>HDFC</option>
<option>HSBC</option></SELECT></td>
</tr>
</table>
<br> <BR><BR>
 <input type="submit" value="   Login   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="   reset   ">
     
 </form>
<br>

</center>

</BODY>
</HTML>
