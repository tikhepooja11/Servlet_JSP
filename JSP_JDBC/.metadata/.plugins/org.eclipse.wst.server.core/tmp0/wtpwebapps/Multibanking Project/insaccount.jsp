<%@ page import ="java.sql.*" %>
<%
   
//step1 load the driver class  
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  

   float bal=200;int status=0;
    String uid=(String)session.getAttribute("id");
   String name=request.getParameter("name");
   String pwd=request.getParameter("password");
   String tpwd=request.getParameter("tpassword");
   String accno=request.getParameter("accno");
      String cid=request.getParameter("cid");
	     String bname=(String)session.getAttribute("bname");
		       String atype=request.getParameter("atype");
   PreparedStatement st=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?)");
  
    st.setString(1,uid);
	 st.setString(2,cid);    
	 st.setString(3,pwd);
     st.setString(4,accno);
     st.setString(5,atype);
     st.setString(6,name);
  	 st.setString(7,bname);
	 st.setFloat(8,bal);
	   st.setString(9,tpwd);
	   st.setInt(10,status);
  
      response.sendRedirect("accsuccess.jsp");
   
  %>
