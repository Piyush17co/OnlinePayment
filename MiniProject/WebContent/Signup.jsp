<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js\jquery-3.4.1.min.js"></script>
<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>
<script type="text/javascript">
  function fname(){
	var reg = /^[A-Za-z]+$/;
	var firstName = $("#first_name").val();
	if (firstName == "") {
		alert("First Name Should Not be Empty");
	} else if (!reg.test(firstName)) {
		alert("Enter only alphabet");
   }
  }
	function lname(){
		var reg = /^[A-Za-z]+$/;
		var lastname = $("#last-name").val();
		if (lastname == "") {
			alert("last Name Should Not be Empty");
		} else if (!reg.test(lastname)) {
			alert("Enter only alphabet");
	   }
	}
		function IsPhoneNumberValid() {
		var numericReg = /^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$/;
		var phoneNo = $("#ph_no").val();
		if (!numericReg.test(phoneNo)) {
			alert("Enter Phone Number Correctly");
		}
		else if (phoneNo == '' || phoneNo.length != 10) {
			alert("Enter Phone Number Correctly");
		}
	}
	function IsEmailvalid() {
		var Email = $("#email").val();
		var emailreg = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		if (!emailreg.test(Email)) {
			alert("Enter E-mail Correctly");
		}else if (Email == '') {
			alert("Enter E-mail !!!");
		}
	}
	function IsPasswordValid() {
		var pass = $("#password").val();
		if (pass == "") {
			alert("Enter Password Correctly");
		}
	}	
    function succes(){
    	/* $(document).ready(function() {
    		swal("Good job!", "Data Inserted !!", "success",3000,false);
		}); */
    	swal({
    		  title: "Good job!",
    		  text: "Data Inserted !!",
    		  timer: 3000
    		});
    }		
</script>

<title>SignUp</title>
<style>
input[type=text], [type=date], [type=password] {
	width: 100%;
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

#email:hover, #password:hover, #first_name:hover, #last-name:hover,
	#ph_no:hover, #datepicker:hover, #submit:hover {
	background-color: #afbab1;
	border-radius: 7px;
}

div.form {
	color: black;
	padding: 8px;
	width: 50%;
	margin-left: 25%;
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
</head>

<body>
	<div class=" top">
		<div class="top-content">
			<p>PayYou</p>
		</div>
	</div>
	<div class="form">
		<div>
			<form action="ServletClass" method="post">
				<div>
					<div class="temp">
						<div class="label">
							<b> FIRST NAME:</b>
						</div>
						<div class="inp">
							<input title="Enter First Name" id="first_name" type="text"
								name="First Name" placeholder="Enter First Name"
								oninput="fname();" required autofocus>
						</div>
					</div>
					<div class="temp">
						<div class="label">
							<b> LAST NAME:</b>
						</div>
						<div class="inp">
							<input id="last-name" type="text" name="Last Name"
								placeholder="Enter Last Name" onblur="lname();" required>
						</div>
					</div>
					<div class="temp">
						<div class="label">
							<b>MOBILE:</b>
						</div>
						<div class="inp">
							<input title="Enter 10-digit Mobile Number" id="ph_no"
								type="text" name="phonenumber"
								placeholder="Enter 10-digit Mobile Number"
								onblur="IsPhoneNumberValid();" required>
						</div>
					</div>
					<div class="temp">
						<div class="label">
							<b>PASSWORD:</b>
						</div>
						<div class="inp">
							<input title="Enter Password" id="password" type="password"
								name="Password"
								placeholder="Enter Password min 8 character require"
								onblur="IsPasswordValid();" required="required">
						</div>
					</div>
					<div class="temp">
						<div class="label">
							<b> E-mail Address:</b>
						</div>
						<div class="inp">
							<input id="email" type="text" name="E-mail"
								placeholder="Enter E-mail id" oninput="IsEmailvalid();"  required="required"/>
						</div>
					</div>
					<div class="temp">
						<div class="label">
							<b>Birth Date:</b>
						</div>
						<div class="inp">
							<input type="date" name="date" id="datepicker" />
						</div>
					</div>
					<div class="temp">
						<div class="label">
							<br /> <b>GENDER:</b>
						</div>
						<div class="inp">
							<input class="circle" type="radio" name="gender" value="male"
								checked />Male<input class="circle" type="radio" name="gender"
								value="female" />Female<br />
						</div>
					</div>
					<div class="temp">
						<div class="inp">
							<div class="submitbutton">
								<input id="submit" type="submit" value="SignUp" name="action"
								  onclick="succes();" />
							</div>
						</div>	
					</div>
					<div class="temp">
					  <div class="label" style="text-align: center; font-size: 18px">
						<b>Do have Account!! </b><a href="Login.jsp" target="_parent">Login</a>
					  </div>
				    </div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>