<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%
try
{
	int accountNo = Integer.parseInt(request.getParameter("accno"));
	String name = request.getParameter("name");
	String password = request.getParameter("psw");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sunny","sunny12");
	PreparedStatement ps = con.prepareStatement("delete users where accountno=? and password=?");
	ps.setInt(1,accountNo);
	ps.setString(2,password);
	int i = ps.executeUpdate();
	out.println(i + "Your Account Has Been Deleted");
	con.close();
		
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>