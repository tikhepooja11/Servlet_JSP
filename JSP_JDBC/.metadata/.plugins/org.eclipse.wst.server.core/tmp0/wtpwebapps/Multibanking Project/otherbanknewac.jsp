<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
<TITLE></TITLE>
 
</HEAD>
<center>
 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter  account number");
 return false;
 }

 if(document.f1.name.value==""){
 alert("enter account holder name");
 return false;
 }

 if(document.f1.password.value==""){
	
 alert("enter password");
 return false;
 }
 if(!((document.f1.password.value)==(document.f1.password1.value)))
	{
	 alert("enter correct password");
	 return false;
	}

if(document.f1.tpassword.value==""){
	
 alert("enter  transaction password");
 return false;
 }
 if(!((document.f1.tpassword.value)==(document.f1tpassword1.value)))
	{
	 alert("enter correct transaction password");
	 return false;
	}

 }

</script>

<BODY background="myfav.jpg"  ><BR>
 <form action="insotheraccount.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><b>Enter Account Details</font></h2><B></B></b><table align="center">
 <tr><td><h3>Select Bank</td><td><SELECT NAME="bname"> 
<%
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  

	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
				  
<%}%>
  </SELECT></td></tr><tr></tr><tr></tr><tr></tr>
<tr><td>
<h3>Enter Account Number   </td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Enter Account Holder Name </td><td> <input type="text" name="name"></td></tr><tr></tr>
<tr><td>
<h3> Customer ID  </td><td> <input type="text" name="cid"></td></tr><tr></tr><tr></tr>
<tr><td>

<h3>Password	 </td><td>      	     <input type="password" name="password"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="password1"></td></tr><br><tr></tr><tr></tr>
<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr><td>
  <h3>Enter Transaction Password	 </td><td>      	     <input type="password" name="tpassword"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="tpassword1"></td></tr><br><tr></tr><tr></tr>

     </table>
 <BR><BR>
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='user.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >

  </font></b> </form>
  </body>
  </center>
  </html>

