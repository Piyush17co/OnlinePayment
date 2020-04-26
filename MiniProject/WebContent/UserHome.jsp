<!DOCTYPE html>

<%@page import="com.Dao.QueryClass"%>
<%@page import="com.Bean.BeanClass"%>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Home Page</title>
<style>
div.top {
	background-color: #5b4159;
	padding: 5px;
	font-family: fontawesome;
	color: white;
	font-size: 18px;
	border-radius: 5px;
	letter-spacing: 1px;
}

div.top-content {
	margin-left: 2%;
}

div.userwelcome {
	padding: 17px;
	font-size: 25px;
}

div.walletbalancedisplay {
	margin-left: 35%;
	margin-top: 4%;
	box-shadow: 5px 5px 5px #5b4159;
	background-color: #f1f1f1;
	width: 25%;
	height: 130px;
	position: relative;
	border-radius: 7px;
}

div.walletbalancedisplay p {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-right: -50%;
	transform: translate(-50%, -50%);
	font-size: 20px;
	color: #735c5c;
}

div.walletbalancedisplay h2 {
	padding: 12px;
	color: #735c5c;
}

input[type=button], [type=submit] {
	width: 20%;
	padding: 15px;
	margin-top: 10px;
	margin-bottom: 15px;
	margin-left: 38%;
	border: none;
	background: #5b4159;
	border-radius: 5px;
	display: block;
	color: white;
}

#add_money:hover, #display_balance:hover, #send_money:hover {
	background-color: #afbab1;
	border-radius: 7px;
}
</style>
</head>
<body>
	<form action="ServletClass" method="post">
		<div class=" top">
			<div class="top-content">
				<p>PayYou</p>
			</div>
		</div>

		<div class="userwelcome">
			<p>
				Welcome,
				<%
				BeanClass B = (BeanClass) session.getAttribute("b");
				BeanClass b = QueryClass.getbal(B.getId());
			%>
				<%=B.getFname()%>
				<%=B.getLname()%>
			</p>
			 <!-- <input type="hidden" name="id" id="id" value="<%=B.getId()%>"/> -->
		</div>
		<div class="walletbalancedisplay">
			<h2>
				<b>Pay You Wallet</b>
			</h2>
			<p>
				<b> <%=b.getBal()%> INR</b>
				<!--  <input type="hidden" name="Wallet" id="Wallet" value="<%=B.getBal()%>" /> -->
			</p>
		</div>

		<div class="bottomwalletbalancedisplay">
			<input type="button" id="add_money" name="addmoney"
				value="View Statement" onclick="location.href = '';" /> 
				
				<input type="submit" id="send_money" name="action"
				          value="Send money to another user" />

			<!--    onclick="location.href = 'Sendmoney.html';" />  -->
			
			<input type="submit" id="display_balance" name="action"
				value="Logout"  />
		</div>
	</form>
</body>
</html>