<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>My OPENMARKET - By HacKoung</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css"
	href="resources/loginform/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/loginform/font-awesome/css/font-awesome.min.css" />

<script type="text/javascript"
	src="resources/loginform/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="resources/loginform/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<section id="reset">
		<div class="container">

			<div class="page-header">
				<h1>SignUp</h1>
			</div>

			<!-- Reset Form START -->
			<form class="col-md-12" action="signup" method="post">
				<div class="form-group">
					<input type="password" class="form-control input-lg"
						placeholder="Old Password" name="oldPassword">
				</div>
				<div class="form-group">
					<input id="pass" type="password" class="form-control input-lg"
						placeholder="New Password" name="password">
				</div>
				<div class="form-group">
					<input type="password" class="form-control input-lg"
						placeholder="New Password(again)" name="confirmPassword">
				</div>
				<div class="form-group">
					<input id="c_pass" type="password"
						class="btn btn-primary btn-lg btn-block" value="SAVE" />
				</div>

			</form>
			<!-- Reset Form END -->

		</div>
	</section>
	<!-- Footer SECTION END-->
	<jsp:include page="page-module/footer.jsp" flush="false" />

</body>
</html>