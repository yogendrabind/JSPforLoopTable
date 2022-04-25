<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>For Loop using JSP</title>
</head>
<body>
<form action="#">
<p>Enter Number to Print table : 
<input type="text" name="num"/>
</p>
<input type="submit" value="Print Table"/>
</form>
<%
String n = request.getParameter("num");
if(!(n == null || (n.equals(""))))
{
int num = Integer.parseInt(n);
%>
<p>Table of <%=num %> is : </p>
<%
for(int i = 1; i <= 10; i++)
{
%>
<table>
<tr>
<td><%=num %> x <%=i %> = <%=num*i %></td>
</tr>
</table>
<%
}
}
%>
</body>
</html>
