<!DOCTYPE html>

<%@page import="com.Dao.QueryClass"%>
<%@page import="com.Bean.BeanClass"%>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Send Money</title>
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

div.sendmoneyblock {
	border: 1px solid;
	box-shadow: 5px 5px 5px #5b4159;
	border-radius: 7px;
	margin-top: 12%;
	margin-left: 26%;
	margin-right: 20%;
	width: 40%;
}

input[type=number], [type=text] {
	width: 60%;
	padding: 15px;
	margin-top: 1%;
	margin-bottom: 15px;
	margin-left: 18%;
	border: none;
	background: #f1f1f1;
	border-radius: 5px;
	display: block;
	color: #735c5c;
}

input[type=submit] {
	width: 44%;
	padding: 15px;
	margin-bottom: 15px;
	margin-left: 28%;
	border: none;
	background: #f1f1f1;
	border-radius: 5px;
	display: block;
	color: #735c5c;
}

#sendmoney_button:hover {
	background-color: #5b4159;
	border-radius: 7px;
}
</style>
<script src="js\jquery-3.4.1.min.js"></script>
<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>
<script type="text/javascript">
	function check_bal() {
		var b= $(wallet).val();
		var m = $(sendmoney_input).val();
		 var diff = b - m;
		if (diff < 0) {
			$(document).ready(function() {
				swal('Insufficent Balance', 'Enter valid money!', 'error');
			});
		}
	}
</script>
</head>
<body>
	<div class=" top">
		<div class="top-content">
			<p>PayYou</p>
		</div>
	</div>
	<form action="ServletClass" method="post">
		<div class="sendmoneyblock">
			<div class="sendmoney">
				<%
					BeanClass B = (BeanClass) session.getAttribute("b");
				    BeanClass b = QueryClass.getbal(B.getId());
				%>
				<input type="hidden" name="id" id="id" value="<%=B.getId()%>" /> 
				<input	type="hidden" name="Wallet" id="wallet" value="<%=b.getBal()%>" />

				<input type="text" id="sendmoney_user" name="sendmoneyuser"
					placeholder="Enter user mobile no link to wallet" /> 
			   <input type="number" id="sendmoney_input" step="1" min="0"
					name="sendmoneyinput"  placeholder="Enter Amount in Rupees" />
			</div>
			<div class="sendmoneybutton">
				<input type="submit" id="sendmoney_button" name="action"
					value="Send Money" onmouseenter="check_bal();" />
			</div>
			
		</div>
	</form>
</body>
</html>