<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.bid.value==""){
alert("Please Enter Ur Name");
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
if((document.f.bid.value=="")||(document.f.pwd.value==""))
	{
alert("Please Enter Username& password");
return false;
}
}
</script>
<BODY background="myfav.jpg">
<br> 
<center>
<BR>
 
 <b><h2><u>Welcome To Multi Banking System</u></h2></b></font>
<br>
 
 

<br>
<form  method=post action="bloginch.jsp" name="f" onSubmit='return call()'>
 <table width="40%" cellpadding="5" cellspacing="5">
 <colgroup span=2 >
 <tr>
 <td><b>Username:</b></td><td><input type="text" name="bid" ></td>
</tr>
 
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr><tr> 
<td><b> Select Bank:</b></td><td><SELECT NAME="bl">
<%
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from  bank");
while(rs.next())
{
	%>
<option><%=rs.getString(2)%></option>
<%
}
	%>
 </SELECT></td>
</tr>
</table>
<br> <BR><BR>
 <input type="submit" value="   Login   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="   reset   ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'"><BR><BR>
 <center><h2><b><a href="newbankuser.jsp"><font size="5"><BR>New User????? Click here</font> </a></b></h2></center>    
 </form>

 

</center>

</BODY>
</HTML>
