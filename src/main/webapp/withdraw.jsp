<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background-image : url(img.jpg);
	background-repeat : no-repeat;
	background-attachment : fixed;
	background-size : cover;
	<!---filter : blur(8px);-->
	<!--webkit-filter : blur(8px);-->
}
</style>
</head>
<body>
<center>
<h1 style = "color:red"><u>SDFC BANK</u></h1>
<h2 style = "color:blue"><u>EXTRAORDINARY SERVICES</u></h2><P></P>
<a href = "home.jsp"><b>Home</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "newaccount.jsp"><b>New Account</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "balance.jsp"><b>Balance</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "deposit.jsp"><b>Deposit</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "withdraw.jsp"><b>Withdraw</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "transfer.jsp"><b>Transfer</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "closeac.jsp"><b>Close A/C</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "aboutus.jsp"><b>AboutUs</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;<p></p>

<h3 style = "color:orange">WITHDRAW FORM</h3>
<form action = "WithdrawCode.jsp" method = "post">
<table>
<tr>
<td>Account Number : </td>
<td><input type = "number" name = "accno"><p></p></td>
</tr>

<tr>
<td>Name : </td>
<td><input type = "text" name = "name"><p></p></td>
</tr>

<tr>
<td>Password : </td>
<td><input type = "password" name = "psw"><p></p></td>
</tr>

<tr>
<td>Amount : </td>
<td><input type = "number" name = "amt"><p></p></td>
</tr>

<tr>
<td></td>
<td><input type = "submit" value = "Submit">
<input type = "reset" value = "Clear"></td>
</tr>

</table>

</body>
</html>