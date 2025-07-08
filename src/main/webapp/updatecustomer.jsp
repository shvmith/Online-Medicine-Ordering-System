<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resourse/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="resourse/js/Register.js">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-image: url(images/6666.jpg);
	background-size: cover;
	background-position: center;
	height: 100vh;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	opacity: 0.9; /* Reduce opacity */
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 450px; /* Adjust the value as needed */
}

.form-control {
	border-radius: 20px;
}

.btn-primary {
	border-radius: 20px;
	width: 100px;
}
</style>
<title>update</title>
<script>
	function validateForm() {
		var name = document.getElementById("firstName").value;
		var username = document.getElementById("username").value;
		var email = document.getElementById("email").value;
		var address = document.getElementById("address").value;
		var dateofbirth = document.getElementById("birthDate").value;
		var phone = document.getElementById("phoneNumber").value;
		var zippostalcode = document.getElementById("postalcode").value;
		var password = document.getElementById("password").value;
		var confirmPassword = document.getElementById("cpassword").value;

		if (name == "" || username == "" || email == "" || address == ""
				|| dateofbirth == "" || phone == "" || zippostalcode == ""
				|| password == "" || confirmPassword == "") {
			alert("All fields are required");
			return false;
		}

		if (password != confirmPassword) {
			alert("Passwords do not match");
			return false;
		}

		return true;
	}
</script>
</head>
<body>

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String username = request.getParameter("uname");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String dateofbirth = request.getParameter("dateofbirth");
	String phone = request.getParameter("phone");
	String zippostalcode = request.getParameter("zippostalcode");
	String gender = request.getParameter("gender");
	String password = request.getParameter("pass");
	%>


	<script src="resourse/js/jquery.min.js"></script>
	<script src="resourse/bootstrap/js/bootstrap.min.js"></script>

	<div class="container">
		<form action="UpdateCustomerServlet" method="post"
			class="form-horizontal" role="form" onsubmit="return validateForm()">
			<h2>Edit profile</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">user
					ID</label>
				<div class="col-sm-9">
					<input type="text" name="id" id="id" placeholder="ID"
						class="form-control" value="<%=id%>" readonly autofocus required>
				</div>
			</div>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">Full
					Name</label>
				<div class="col-sm-9">
					<input type="text" name="name" id="firstName"
						placeholder="First Name" class="form-control" value="<%=name%>"
						autofocus required>
				</div>
			</div>
			<div class="form-group">
				<label for="lastName" class="col-sm-3 control-label">Username</label>
				<div class="col-sm-9">
					<input type="text" name="username" id="username"
						placeholder="Username" class="form-control" value="<%=username%>"
						autofocus required>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email </label>
				<div class="col-sm-9">
					<input type="email" id="email" placeholder="Email"
						class="form-control" name="email" value="<%=email%>" required>
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="col-sm-3 control-label">Address</label>
				<div class="col-sm-9">
					<input class="form-control" id="address" placeholder="address"
						value="<%=address%>" name="address" required>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date
					of Birth</label>
				<div class="col-sm-9">
					<input type="date" name="dateofbirth" id="birthDate"
						class="form-control" value="<%=dateofbirth%>" required>
				</div>
			</div>
			<div class="form-group">
				<label for="phoneNumber" class="col-sm-7 control-label">Phone
					Number </label>
				<div class="col-sm-9">
					
					<input name="phone" id="phoneNumber" placeholder="Phone number" class="form-control" value="<%=phone%>" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number">
					
				</div>
			</div>
			<div class="form-group">
				<label for="postalcode" class="col-sm-3 control-label">Zip/PostalCode
				</label>
				<div class="col-sm-9">
					<input name="zippostalcode" id="postalcode"
						placeholder="postalcode/Zip" class="form-control"
						name="postalcode" value="<%=zippostalcode%>" required>
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-3" for="gender">Gender</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-7">
							<label class="radio-inline" for="gender-0"> <input
								type="radio" name="gender" id="gender-0" value="<%=gender%>"
								checked="checked">Female
							</label>
						</div>
						<div class="col-sm-7">
							<label class="radio-inline" for="gender-1"> <input
								type="radio" name="gender" id="gender-1" value="<%=gender%>"
								required>Male
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">Password</label>
					<div class="col-sm-9">
						<input name="psw" type="password" id="password"
							placeholder="Password" class="form-control"
							value="<%=password%>" required>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-8 control-label">Confirmed
						Password</label>
					<div class="col-sm-9">
						<input name="psw" type="password" id="cpassword"
							placeholder="Password" class="form-control"
							value="<%=password%>" required>
					</div>
				</div>
			</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<span class="help-block">*Required fields</span>
				</div>
			</div>
			<button type="submit" name="submit" class="btn btn-primary btn-block"
				style="border-radius: 40px">Update</button>
		</form>
		<!-- /form -->
	</div>


	<!-- ./container -->

</body>
</html>