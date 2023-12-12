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
.parent {
	
}

.services {
	position : absolute;
	right : 80%;
}
.right {
	position : absolute;
	left : 80%;
}
.main {
	display : flex;
	align-items : center;
	justify-content : center;
}


 <!--form 
{
   height : 250px;
    width : 400px;
    border-radius : 20px;
    box-shadow : 0 0 10px 3px black;
    padding : 20px;
}-->


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
<a href = "aboutus.jsp"><b>AboutUs</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;

<div class = "parent">
<div class = "services">
	<h3 style = "color:orange">SERVICES</h3>
	<ul type = "circle">
	<li>Banking</li>
	<li>Net Banking</li>
	<li>Transactions</li>
	<li>New Account</li>
	<li>Loans</li>
	<li>Insurance</li>
	</ul>
</div>
<div class = "main">
<form action = "NewAccountCode.jsp" method = "post">
<h3 style = "color:orange">OPEN ACCOUNT</h3>
<table>
<tr>
<td>Account Number : </td>
<td><input type = "text" name = "accono"></td><p></p>
</tr>

<tr>
<td>Name : </td>
<td><input type = "text" name = "name"></td><p></p>
</tr>

<tr>
<td>Password : </td>
<td><input type = "password" name = "psw"></td><p></p>
</tr>

<tr>
<td>Confirm Password : </td>
<td><input type = "password" name = "cpsw"></td><p></p>
</tr>

<tr>
<td>Amount : </td>
<td><input type = "number" name = "amt"></td><p></p>
</tr>

<tr>
<td>Address :</td> 
<td><input type = "text" name = "addr"></td><p></p>
</tr>

<tr>
<td>Mobile No : </td>
<td><input type = "number" name = "mno"></td><p></p>
</tr>

<tr>
<td></td>
</tr>
<tr><td></td></tr>

<tr>
<td></td>
<td><input type = "submit" name = "Submit">
<input type = "reset" name = "Clear"></td>
</table>

</form>
</div>
<div class = "right">
	<h3 style = "color:orange">Venky Siri</h3>
	<p>newoifbugefinwkdvduvolbfvenkysirimnvuerniygsnldfoihfbh</p>
</div>
</div>
</center>
</body>
</html>