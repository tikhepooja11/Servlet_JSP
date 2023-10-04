 <%@ page import="java.sql.*"%>
 <BODY background="myfav.jpg"><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="#DF4800">  New User Requests </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><font size="4" color="#DF4800">User ID</font></b></td>
<td><font size="4" color="#DF4800">Password</b></td>

 <td colspan="2"><font size="4" color="#DF4800">Operations</b></td> 


</tr><%    
int s=0;
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  

	  String q1="select * from clogin where status=?";
	  System.out.println("Query is : " +q1);
	   PreparedStatement st=con.prepareStatement(q1);
	st.setInt(1,s);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="#FF8409"><%=rs.getString(2)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(3)%></font></td>
<td><a href="acceptuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Accept</font></a></td>
<td><a href="deleteuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Decline</font></a></td>
</tr> 
<%}%><center></table><BR><BR>
	<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 


 

