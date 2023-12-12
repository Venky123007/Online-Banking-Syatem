<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/loginstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ page import = "java.sql.*" %>
<%
try
{
 int accountNo = Integer.parseInt(request.getParameter("accno"));
 String name =request.getParameter("name");
 String pswd = request.getParameter("psw");
 
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sunny","sunny12");
 PreparedStatement ps = con.prepareStatement("select * from users where name=? and password = ?");
 ps.setString(1,name);
 ps.setString(2,pswd);
 ResultSet rs= ps.executeQuery();
 ResultSetMetaData rsmd = rs.getMetaData();
 out.println("<center><p><p><p><p><p><p><p><p><p><p><p><table border = '1'>"); 
 int n = rsmd.getColumnCount();
 for(int i=1; i<=n; i++)
	 out.println("<td><font color=red size=3><b>" + "<br>" + rsmd.getColumnName(i));
	 out.println("<tr>");
	 while(rs.next())
	 {
		 for(int i=1; i<=n; i++)
			 out.println("<td><font  color=blue><b><br>" + rs.getString(i));
		 out.println("<tr>");
	 }
	 out.println("</table></center></body></html>");
	 con.close();
 
 
 
}
catch(Exception e)
{
out.println(e);	
}


%>
<p></p>
<p></p>
<center><a href = "home.jsp"><b>Back to Home</b></a></center>
</body>
</html>