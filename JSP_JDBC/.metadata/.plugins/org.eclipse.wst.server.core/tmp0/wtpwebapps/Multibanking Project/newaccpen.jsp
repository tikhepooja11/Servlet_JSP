<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY background="myfav.jpg"><center><BR><BR><BR><BR><h2><u>List Of Pending Accounts</u></h2><BR><BR><BR> 
 <table align=center cellpadding="0" border=1 width="60%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b>A/C Number </td>
		<td align=center><b> A/C Name </td>
			<td align=center ><b>Customer ID</td>
	<td align=center><b>Name of Bank</td> <td align=center><b>Amount</td>  <td align=center colspan=2><b>operation</td> 
				</tr>
<%
 
String bn=request.getParameter("bname");
 String id="";
int in=0;
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where status=0");
while(rs.next())
{  id=rs.getString(1);
	 %>
<tr>
	<td align=center><%=rs.getString(4)%> </td>
	<td align=center><%=rs.getString(5)%> </td>
	 
		<td align=center><%=id%> </td>
				<td align=center><%=rs.getString(7)%> </td>
		<td align=center><%=rs.getFloat(8)%> </td>
		<td align=center><a href="comp.jsp?id=<%=id%>">Grant</a> </td> 
		<td align=center><a href="pend.jsp?id=<%=id%>">Reject</a> </td> 
		</tr>
		<%
			in++;
}
if(in==0)
response.sendRedirect("norec1.jsp");
session.setAttribute("id",id);
%>
</table><BR><BR>
 <center><input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
</BODY>
</HTML>
