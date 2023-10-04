<%@ 
	page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import ="javax.servlet.* ,java.io.* ,java.sql.*"
    
   %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP JDBC EXAMPLE</title>
</head>
<body>
		
	<%
	Connection conn=null;
		try{
			
				final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
				final String DB_URL="jdbc:mysql://localhost:3306/wt";	  
				Class.forName(JDBC_DRIVER);
				conn=DriverManager.getConnection(DB_URL,"root","pooja");
				Statement stmt=conn.createStatement();
				int enumber=Integer.parseInt(request.getParameter("enumber"));
				stmt.executeUpdate("insert into emp values(5,100)");  
		
				int i=0;
				if (i>0)
				out.print( "Successfully inserted");
		
			}catch(Exception e){};
			
		conn.close();
		
		
	
	%>
	
</body>
</html>