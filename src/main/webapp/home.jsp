<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Banking Application</title>
<style>
body {
	background-image : url(img.jpg);
	background-repeat : no-repeat;
	background-attachment : fixed;
	background-size : cover;
	<!---filter : blur(8px);-->
	<!--webkit-filter : blur(8px);-->
}

form
{
box-shadow : 0 0 10px 3px black;
width : 900px;
height : 30px;
padding : 2px 2px 2px 2px;
margin : 80px;
background-color: lightgreen;
font-size : 18px;
border-radius: 10px;
}

h1
{
color : darkblue;
font-family : times roman;
font-size : 50px;
box-shadow : 1px 1px 5px 1px black;
width : 400px;
border-radius : 30px;
<!--background-color : cyan;-->
}

div
{
position : relative;
left : 220px;
}

.branch {
	position : absolute;
	top: 112px;
	bottom : 460px;
	left : 550px;
}
h3 {
position: absolute;
top: 150px;
left: 230px;
}

</style>
</head>
<body>
<div class = "img">
	<p>Venkatesh</p>
</div>
<center>

<h1>HDFC BANK</h1>
<p class = "branch">Main branch, Madhapur. Ph : 9754747377</p>
<h3 style = "color:red"><u>OUR SERVICES</u></h3>
<form>
<a href = "home.jsp"><b>Home</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "newaccount.jsp"><b>New Account</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "balance.jsp"><b>Balance</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "deposit.jsp"><b>Deposit</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "withdraw.jsp"><b>Withdraw</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "transfer.jsp"><b>Transfer</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "closeac.jsp"><b>Close A/C</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
<a href = "aboutus.jsp"><b>AboutUs</b></a>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;
</form>
</center>
<div>
<p>
<h2 style = "color:brown"><b><u>Our Approach</u></b></h2><br>
<b>Our legacy is determined by the customers we serve, the jobs we create, and the businesses we help to prosper.</b><br>

SDFC provides financing opportunities to business owners who are underserved by traditional banks.<br>

Our approach is to reimagine lending. We have developed a “PhyGital” model which uses technology and<br>
authentic in-person service to create loans which support the ambitions of our customers. We engage directly <br>
with small business owners and work through loan applications together, in person, at the customer’s pace.<br>

SDFC’s business foundations include a commitment to responsible credit, trusting relationships, and strategic partnerships with large banks.<br>
</p>
</div>

</body>
</html>