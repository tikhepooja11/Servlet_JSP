<%@ page import ="java.sql.*" %>
<%
   int id=0;
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  
   float bal=200;
 PreparedStatement st=con.prepareStatement("select MAX(id) from blogin");
 ResultSet rs1=rs1.executeQuery();
 if(rs1.next()){
	 String s=rs.gerString(1);
	 if(s==null){
	 i=1;}else{i=Integer.parseInt(s)+1;}
 }
   String bid=request.getParameter("id");

  // String name=request.getParameter("name");
   String pwd=request.getParameter("pwd");
 //  String accno=request.getParameter("accno");
     // String cid=request.getParameter("cid");
//String bname=(String)session.getAttribute("bname");
		       String bname=request.getParameter("bname");
			   int ind=0;
   PreparedStatement st=con.prepareStatement("insert into blogin values(?,?,?,?)");
  st.setString(1,i);
    st.setString(2,bid);
	    st.setString(3,pwd);
		st.setString(4,bname);
		st.setString(5,ind);
		st.executeUpdate();
 response.sendRedirect("process.jsp");
 %>