<%@page import="java.sql.*"%>
	
<%
int count=0;
String acc=request.getParameter("accno");
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  

Statement st=con.createStatement();
int i=st.executeUpdate("delete from reject where accno='"+acc+"'");
 if(i>0)
%>
<BR><BR><BR><BR><center> <h2>Record is Deleted</h2>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  