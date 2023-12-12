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
form
{
position : absolute;
top : 100px;
left : 150px;
bottom : 200px;
right : 200px;
box-shadow : 0 0 10px 3px black;
width : 900px;
height : 30px;
padding : 2px 2px 2px 2px;
margin : 80px;
background-color: lightgreen;
font-size : 18px;
}

h1
{
color : darkcyan;
font-family : times roman;
font-size : 50px;
box-shadow : 1px 1px 5px 1px black;
width : 400px;
border-radius : 20px;
}
div
{
position : absolute;
top : 300px;
left : 550px;
right : 500px;
bottom : 500px;
width : 300px;
}

h3
{
  position : absolute;
  top : 100px;
  left : 580px;
  background-color : lightgreen;
  border-radius : 20px;
  width : 200px;
}
h4
{ 
  position : absolute;
  top : 250px;
  left : 600px;
  background-color : lightgreen;
  border-radius : 20px;
  width : 200px;
}

.column
{
position : relative;
left : 100px;
}

</style>
</head>
<body>
<center>

<h1>SDFC BANK</h1>
<h3 style = "color:red">EXTRAORDINARY SERVICES</h3>
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

<h4>ABOUT US</h4>
<div>
<u>Registered Office:</u>&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;<u>SBFC Customers</u><br>
103, 1st Floor,&emsp14;&emsp14;&emsp14;&emsp14;&emsp14;customercare@sbfc.com<br>
C&B Square,Sangam Complex,                              
Andheri Kurla Road,Village Chakala,                     <u>DHFL Customers</u><br>
Andheri (East), Mumbai - 400059                         customercare_dhfl@sbfc.com<br>
CIN: U67190MH2008PTC178270                              <p></p>
Tel No : 022-67875300                                   <u>Reliance Customers</u><br>
Fax No. 022-67875334                                    customercare_rel@sbfc.com
</div>
</center>
</body>
</html>