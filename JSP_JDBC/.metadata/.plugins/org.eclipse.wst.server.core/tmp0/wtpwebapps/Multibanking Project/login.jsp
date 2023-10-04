<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.cid.value==""){
alert("Please Enter Customer Id");
document.f.cid.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
}
</script>
<BODY background="myfav.jpg">

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2><b>Welcome To Multi Banking System</b></h2></font>
<br>
 



<form  method=post action="logincheck.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <td><b>Customer ID:</b></td><td><input type="text" name="cid" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr>
</table>
<br> <BR>

 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'">
 <center><h2><b><a href="newcustomer.jsp"><font color="#FF5C0F"><BR>New User????? Click here</font> </a></b></h2></center>
 </form>
<br>

</center>

</BODY>
</HTML>
