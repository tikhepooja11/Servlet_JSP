<%@ page import ="java.sql.*" %>
<%
   boolean d1=false;   boolean s1=false; boolean s2=false; boolean d2=false;
 //step1 load the driver class  
   Class.forName("oracle.jdbc.driver.OracleDriver");  
     
   //step2 create  the connection object  
   Connection con=DriverManager.getConnection(  
   "jdbc:oracle:thin:@localhost:1521:xe","system","pooja123");  
     
   int ind=0;int ind1=0;String uid="";int ii=0;
//String uid=(String)session.getAttribute("id");
    PreparedStatement ps1=con.prepareStatement("select nvl(MAX(id),1) from transfer");
 ResultSet rs2=ps1.executeQuery();
 if(rs2.next()){
	 String s=rs2.getString(1);
	 if(s==null){
	 ii=1;}else{ii=Integer.parseInt(s)+1;}
uid=String.valueOf(ii);}
     String dbname=request.getParameter("bname");
   String pwd=request.getParameter("password");
   String accno=request.getParameter("accno");
      String amt=request.getParameter("amt");
float am=Float.parseFloat(amt);
	     String sbname=(String)session.getAttribute("bname");
		       String atype=request.getParameter("atype");
			   String daccno=request.getParameter("daccno");
			    String datype=request.getParameter("datype");
PreparedStatement st1=con.prepareStatement("select * from customer where accno=? and  atype=? and bname=?");
	st1.setString(1,daccno);
	st1.setString(2,datype);
	st1.setString(3,dbname);
	ResultSet rs=st1.executeQuery();
	System.out.println("hiiii...8");
	if(rs.next()){
		ind=rs.getInt(10);
		if(ind==1){d2=true;
		}else{ d2=false;}
d1=true;
	}
	Statement ss=con.createStatement();
ResultSet rs1=ss.executeQuery("select * from customer where accno='"+accno+"' and  atype='"+atype+"' and bname='"+sbname+"'");System.out.println("hiiii...9");
	if(rs1.next()){ind1=rs1.getInt(10);if(ind1==1){s2=true;
		}else{ s2=false;}
s1=true;}
if(d1&&s1){
	if(d2&&s2){
				 PreparedStatement st=con.prepareStatement("insert into transfer values(?,?,?,?,?,?,?,?,?)");
     st.setString(1,uid);
	    st.setString(2,accno);
		 st.setString(3,daccno);
   st.setFloat(4,am);
      st.setString(5,atype);
	  st.setString(6,datype);
 st.setString(7,pwd);
  st.setString(8,sbname);
    st.setString(9,dbname);
   st.executeUpdate();
     response.sendRedirect("trfprocess.jsp");
	}else{
		if(d2){response.sendRedirect("dsacprocess.jsp");}
		if(s2){response.sendRedirect("ddacprocess.jsp");}
		if(!(s2||d2)){response.sendRedirect("dsdacprocess.jsp");}
		}
}else{
	if(!(d1||s1)){
			response.sendRedirect("nosourcedest1.jsp");
		}else{
if(d1){  response.sendRedirect("nosource1.jsp");}else{  response.sendRedirect("nodest1.jsp");}}
}

	
	
  %>