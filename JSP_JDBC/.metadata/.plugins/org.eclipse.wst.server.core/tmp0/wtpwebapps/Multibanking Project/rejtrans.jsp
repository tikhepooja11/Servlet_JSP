<%@ page import="java.sql.*"%>
<%
int i=0;
String cid= (String)session.getAttribute("cid");
  String bname=(String)session.getAttribute("bname");
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  
  
   PreparedStatement st1=con.prepareStatement("select * from reject where cid=? and bname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs=st1.executeQuery();%><BR><BR><center><h2>Rejected Transactions<BR><BR>
<table align=center cellpadding="0" border=1 width="50%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b> A/C Number </td>
	
			<td align=center ><b>Account Type</td>
	<td align=center><b>Name of Bank</td>
				</tr><%
while(rs.next())
{
	i++;
	%>
	<td align=center><b><%=rs.getString(2)%> </td>
		<td align=center><b><%=rs.getString(3)%> </td>
		<td align=center><b><%=rs.getString(4)%> </td> 

<%
		}

  %>
  </table>
  <center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='treport.jsp'">