//String bname=(String)session.getAttribute("bn");
<html>
<body>
<% 
String ch = (String)session.getAttribute("ch");
int in=1; 
if(ch.equalsIgnoreCase("true"))
{ 
	%>
 <center><BR><BR><BR>	<h2>The Transaction for the customer ID<%=id%> has been Accepted</h2>
 <BR><BR></center>
 <input type="submit" value="     back     " onclick="2window.location='bmain.jsp'">  
<%
}else
{	
%>
<center><BR><BR><BR>	<h2>The Transaction Password for the customer ID<%=id%> is Invalid </h2>
<BR><BR></center>
<input type="submit" value="     back     " onclick="2window.location='bmain.jsp'">  
<%
}

%>
</body>
</html>

