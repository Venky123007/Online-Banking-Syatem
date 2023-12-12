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
	String accountNo = request.getParameter("accono");
	String name = request.getParameter("name");
	String password = request.getParameter("psw");
	String confirmPassword = request.getParameter("cpsw");
	double amount = Double.parseDouble(request.getParameter("amt"));
	String address = request.getParameter("addr");
	long mobileNo = Long.parseLong(request.getParameter("mno"));
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sunny","sunny12");
	PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
	ps.setString(1,accountNo);
	ps.setString(2,name);
	ps.setString(3,password);
	ps.setString(4,confirmPassword);
	ps.setDouble(5,amount);
	ps.setString(6,address);
	ps.setLong(7,mobileNo);
	
	int i = ps.executeUpdate();
	out.println(i + "New Record Inserted");
	con.close();
	
}
catch(Exception ex)
{
	out.println(ex);
}


%>
<p></p>
<p></p><p></p><p></p><p></p>
<a href="home.jsp">Home</a>
</body>
</html>