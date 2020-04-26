<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Login</title>
<style>
input[type=text], [type=password] {
	width: 91%;
	padding: 15px;
	margin-top: 5px;
	margin-bottom: 22px;
	border: none;
	background: #f1f1f1;
	border-radius: 7px;
	display: inline-block;
}

input[type=button], [type=submit] {
	width: 50%;
	padding: 15px;
	margin-top: 5px;
	margin-bottom: 22px;
	border: none;
	background: #5b4159;
	border-radius: 5px;
	display: inline-block;
	color: white;
}
#login{
	width: 100%;
	padding: 15px;
	margin-top: 5px;
	margin-bottom: 22px;
	border: none;
	background: #5b4159;
	border-radius: 5px;
	display: inline-block;
	color: white;
	text-align: center;
}

#password:hover, #ph_no:hover, #submit:hover {
	background-color: #afbab1;
	border-radius: 7px;
}

div.form {
	color: black;
	padding: 8px;
	width: 25%;
	margin-left: 35%;
	margin-top: 12%;
}

div.head {
	color: #232823;
	text-align: center;
}

div.button {
	display: block;
}

div.temp {
	font-family: monospace;
}

div.label {
	color: #586758;
}

div.inp {
	
}

div.submitbutton {
	text-align: center;
}

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
</style>
<script src="js\jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function myFun() {
		var phoneno = $("#ph_no").val();
		var pass = $("#password").val();
		if (phoneno == "") {
			alert("Please Enter MobileNo");
		} else if (pass == "") {
			alert("please enter password");
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
	<div class="form">


		<form action="ServletClass" method="post">

			<div>
			         <div class="temp">
			           <div class="inp">
                          <div class="bottomwalletbalancedisplay">
			              <input type="text"  id="login" name="addmoney"
			               	value="Login Page"  /> 
				           </div>
				       </div>
                   </div> 
				<div class="temp">
					<div class="label">
					
						<b> Mobile No:</b>
					</div>
					<div class="inp">
						<input title="Enter Mobile No" id="ph_no" type="text"
							name="Mobile No" placeholder="Enter 10-digit Mobile No" required
							autofocus>
					</div>
				</div>
				<div class="temp">
					<div class="label">
						<b> Password:</b>
					</div>
					<div class="inp">
						<input id="password" type="password" name="Password"
							placeholder="Enter Password">
					</div>
				</div>
				<div class="temp">
					<div class="inp">
						<div class="submitbutton">
							<input id="submit" type="submit" value="Login" name="action" />
						</div>
					</div>
				</div>
				<div class="temp">
					<div class="label" style="text-align: center; font-size: 18px">
						<b>or New User?</b><a href="Signup.jsp" target="_parent">SignUp</a>
					</div>
				</div>
			</div>
		</form>
	</div>


</body>
</html>