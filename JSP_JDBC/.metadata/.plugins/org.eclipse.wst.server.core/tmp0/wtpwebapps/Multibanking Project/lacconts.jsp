<%@page import="java.sql.*"%>
<html>
<head>
<script>
function call()
{
document.forms[0].action="listacc.jsp";
document.forms[0].submit();
}
</script>
		<BODY background="myfav.jpg">
		<BR><BR><BR>
<CENTER>
<form >
<h2><U>List of Accounts</u></H2><BR><BR><BR><BR>
<table align=center cellpadding=0 width="50%">
<colgroup   span=2 align=left >
<tr><td align=center>
	<b>SELECT ACCOUNTS   : </td><td><SELECT NAME="la" onChange="call()">
	<option>Select a type</option>
	<option>Savings Account</option>
	<option>Current Account</option>
	<option>Others</option></SELECT></td></tr>

</table>
<br> </form><BR><BR>
  <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  