<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>


<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>

<%@ page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaResponse"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="resources/images/favicon.ico">
<title>Login or Sign up</title>
<!-- Bootstrap core CSS -->

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/navbar-fixed-top.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.css"
	rel="stylesheet">

<!-- /Bootstrap core CSS -->
<script type="text/javascript">
var attempt = 3; // Variable to count number of attempts.
// Below function Executes on click of login button.
function validate(){
//var username = document.getElementById("username").value;
var password = document.getElementById("exampleInputPassword2").value;
if ( username !== "" && password !== ""){
attempt --;// Decrementing by one.
alert("You have left "+attempt+" attempt;");
if( attempt == 0){
document.getElementById("username").disabled = true;
document.getElementById("password").disabled = true;
document.getElementById("submit").disabled = true;
return false;
}

}
}
</script>
</head>

<body>

	<!-- Fixed navbar -->
	<div id="mystaticHdr"></div>
	<!-- /Fixed navbar -->

	<!-- Container -->
	<div class="container">

		<!-- Jumbotron  -->
		<div class="jumbotron">
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<h2>
						<img src="resources/images/Query Stack.jpg"
							class="img-circle img-thumbnail" height="64" width="64" />&nbsp;
						Login
					</h2>
					<form class="form-inline" action="login.spring" method="post"
						role="form">
						<div class="col-sm-3">
							Email<br> <input type="email" name="email"
								class="form-control" id="exampleInputEmail2"
								placeholder="Enter email" /> <br> <label class="checkbox">
								<input type="checkbox"> Remember me
							</label>
						</div>
						<div class="col-sm-3">
							Password<br> <input type="password" name="password"
								class="form-control" id="exampleInputPassword2"
								placeholder="Password" /> <br> Forgot Password?
						</div>
						<div class="col-sm-3">
							&nbsp;<br>
							<button type="submit" class="btn btn-primary" onclick="validate()">Sign in</button>
							<br> &nbsp;
						</div>
					</form>
					<h2>Alternate Login</h2>
					<span><a href="https://www.facebook.com"><img
							src="resources/images/facebook.jpg"
							class="img-circle img-thumbnail" height="64" width="64" /></a> <a
						href="https://www.google.com"><img
							src="resources/images/google.jpg"
							class="img-circle img-thumbnail" height="64" width="64" /></a> <a
						href="https://www.yahoo.com"><img
							src="resources/images/yahoo.jpg" class="img-circle img-thumbnail"
							height="64" width="64" /></a> </span>
				</div>
			</div>
		</div>
		<!-- /Jumbotron  -->

		<!-- Main Body -->
		<div class="row">

			<!-- Main Body Heading -->
			<div class="col-xs-12 col-md-12">
				<h3>Create an account</h3>
				<hr>
			</div>
			<!-- /Main Body Heading -->

			<!-- Left -->
			<div class="col-xs-6 col-md-8">
				<div class="well">
					<h3>How it works?</h3>
					<p>Query Stack System allows its user to explore the 
					web site for the solutions and allow asking or submitting solution 
					to any problem only after registration.</p>
					<p>So, provide the valid and true credentials and enjoy this amazing library 
					to all technical problems.</p>
				</div>
			</div>
			<!-- /Left -->

			<!-- Right  -->
			<div class="col-xs-12 col-md-4">
			
				<!-- Create Account From  -->
				
				
				<form class="form-horizontal" action="register.spring" method="post"
					role="form">
					<div class="form-group">
						<div class="col-sm-10">
							<!--<label for="inputName3" class="col-sm-2 control-label">Name</label>-->
							<input type="text" class="form-control" id="inputEmail3"
								name="name" placeholder="Name">
						</div>
					</div>

					<div class="form-group">
						<!--<label for="inputEmail3" class="col-sm-2 control-label">Email</label>-->
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email"
								name="emailId" placeholder="Email">
							<h6 id="info" style="color: red"></h6>
						</div>
					</div>

					<div class="form-group">
						<!--<label for="inputPassword3" class="col-sm-2 control-label">Password</label>-->
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword3"
								name="password" placeholder="Password">
						</div>
					</div>

					<div class="form-group">
						<!--<label for="inputPassword3" class="col-sm-2 control-label">Confirm</label>-->
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="Confirm Password">
						</div>
					</div>

					<div class="form-group">

						<div class="col-sm-10">
							<!--   <label class="form-control label-primary">Date of Birth</label> -->
							<!--<label for="inputName3" class="col-sm-2 control-label">Name</label>-->
							<input type="text" class="form-control" id="start-date"
								name="dob" placeholder="DD-MM-YYYY">
						</div>
					</div>
		<!-- ******************************************************************************************* -->			
					<!--  Changes made by ganesh for 'Address' -->
					<div class="form-group">
						
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputAddr"
								name="address" placeholder="Address">
						</div>
					</div>
					
					<!--  Changes made by ganesh for 'Phone' -->
					<div class="form-group">
						
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputPhone"
								name="phone" placeholder="Phone Number">
						</div>
					</div>

<!-- ************************************************** captcha ***************************************** -->	
		<p>
		<%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LdlHOsSAAAAAM8ypy8W2KXvgMtY2dFsiQT3HVq-", "6LdlHOsSAAAAACe2WYaGCjU2sc95EZqCI9wLcLXY", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
        
        
        
			</p>
			
		

					


					<button type="submit"
						class="btn <!--btn-lg--> btn-primary col-sm-10">Create
						Account</button>

				</form>
				<!-- /Create Account From  -->
				
				
			</div>
			<!-- /Right  -->



		</div>
		<!-- /Main Body -->

	</div>
	<!-- /Container -->

	<!-- Footer -->
	<div id="footer"></div>
	<!-- /Footer -->


	<!-- Script -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/onload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ajax.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui/jquery-ui-basics.js"
		type="text/javascript"></script>
	<!-- /Script -->


</body>
</html>
