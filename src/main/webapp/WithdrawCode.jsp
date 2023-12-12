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
	double amount = Double.parseDouble(request.getParameter("amt"));
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sunny","sunny12");
	PreparedStatement ps = con.prepareStatement("select amount from users where accountno=?");
	ps.setDouble(1,accountNo);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		out.print("<hr> Your account has been debited by " + amount + "</hr>");
		amount = rs.getDouble(1) - amount;
		out.println("<hr> Your account balance is " + amount + "</hr>");
	}
	
	PreparedStatement ps1 = con.prepareStatement("update users set amount = ? where accountno = ?");
	ps1.setDouble(1,amount);
	ps1.setInt(2,accountNo);
	
	ps1.executeUpdate();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>