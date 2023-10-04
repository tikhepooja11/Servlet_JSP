<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello pooja ....</h1>
<%out.print("welcome to jsp"); %>
<% int a=10,b=2,c;
	c=a+b;
	out.print("the result is "+c);
%>
<%!
   int x=2,result;
	
  int answer(int x)
  {
	  result= x+x;
	  return result;
  }

%>
<%
    result=answer(x);
	out.print("The value of x is "+x);
    out.print("The value of result is "+result);
%>
</body>
</html>