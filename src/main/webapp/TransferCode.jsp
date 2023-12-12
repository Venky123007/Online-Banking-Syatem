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
	int toAccountNo  = Integer.parseInt(request.getParameter("taccno"));
	double amount = Double.parseDouble(request.getParameter("amt"));
	double tamount = 0;
	double ttamount = 0;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sunny","sunny12");
	PreparedStatement ps = con.prepareStatement("select amount from users where accountno=?");
	ps.setInt(1,accountNo);
	ResultSet rs = ps.executeQuery();
	
	PreparedStatement ps1 = con.prepareStatement("select amount from users where accountno=?");
	ps1.setInt(1,toAccountNo);
	ResultSet rs1 = ps1.executeQuery();
	
	if(rs.next() && rs1.next())
	{
		if(amount<rs.getDouble(1))
		{
			tamount = rs.getDouble(1)-amount;
			PreparedStatement ps2 = con.prepareStatement("update users set amount=? where accountno=?");
			ps2.setDouble(1,tamount);
			ps2.setInt(2,accountNo);
			int i = ps2.executeUpdate();
		    
			ttamount = rs1.getDouble(1)+amount;
			PreparedStatement ps3 = con.prepareStatement("update users set amount=? where accountno=?");
			ps3.setDouble(1,ttamount);
			ps3.setInt(2,toAccountNo);
			int i1 = ps3.executeUpdate();
			
			out.println("<fieldset><h3>Amount Transfered " + amount + "<br>");
			out.println("Available Balance " + tamount + "</h3></fieldset>");
		}
		else
		{
			out.println("Insufficient Balance");
		}
	}
	else
	{
		out.println("Invalid User Name and Password");
	}
	
	con.close();
}
			
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>